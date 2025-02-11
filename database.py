import sqlite3
import pandas as pd
import numpy as np
from lets_plot import *

LetsPlot.setup_html()

calc = sqlite3.connect('database.sqlite')

query = "SELECT name, ave_damage FROM weapon"
weapons_df = pd.read_sql_query(query, calc)

calc.close()

defense_values = np.arrange(0, 101, 5)

def calculate_damage(base_damage, defense):
    min_damage = np.floor(0.1 * base_damage)  
    effective_damage = np.maximum(base_damage - defense, min_damage)  
    return effective_damage

damage_data = []

for _, row in weapons_df.iterrows():
    weapon_name = row['name']
    base_damage = row['ave_damage']
    
    for defense in defense_values:
        effective_damage = calculate_damage(base_damage, defense)
        damage_data.append({'Weapon': weapon_name, 'Defense': defense, 'Damage': effective_damage})

damage_df = pd.DataFrame(damage_data)

plot = (ggplot(damage_df, aes(x='Defense', y='Damage', color='Weapon')) 
        + geom_line()
        + ggtitle("Weapon Damage vs. Monster Defense")
        + xlab("Monster Defense") 
        + ylab("Effective Damage"))

plot.show()