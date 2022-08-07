import os
import json

upgrades = [
    {
        'elements': 'contenttweaker:upgrade_speed_1',
        'description': 'Make this machine run 30% faster! Stacks for each gearbox block replaced.',
        'modifier': {
            'io': 'input',
            'target': 'duration',
            'operation': 1,
            'multiplier': 0.7
        }
    },
    {
        'elements': 'contenttweaker:upgrade_speed_2',
        'description': 'Make this machine run 50% faster! Stacks for each gearbox block replaced.',
        'modifier': {
            'io': 'input',
            'target': 'duration',
            'operation': 1,
            'multiplier': 0.5
		}
    },
    {
        'elements': 'contenttweaker:upgrade_speed_3',
        'description': 'Make this machine run 75% faster! Stacks for each gearbox block replaced.',
        'modifier': {
            'io': 'input',
            'target': 'duration',
            'operation': 1,
            'multiplier': 0.25
        }
    },
    {
        'elements': 'contenttweaker:upgrade_energy_1',
        'description': 'Make this machine run 30% faster! Stacks for each gearbox block replaced.',
        'modifier': {
            'io': 'input',
            'target': 'energy',
            'operation': 1,
            'multiplier': 0.7
        }
    },
    {
        'elements': 'contenttweaker:upgrade_energy_2',
        'description': 'Make this machine run 50% faster! Stacks for each gearbox block replaced.',
        'modifier': {
            'io': 'input',
            'target': 'energy',
            'operation': 1,
            'multiplier': 0.5
        }
    },
    {
        'elements': 'contenttweaker:upgrade_energy_3',
        'description': 'Make this machine run 75% faster! Stacks for each gearbox block replaced.',
        'modifier': {
            'io': 'input',
            'target': 'energy',
            'operation': 1,
            'multiplier': 0.25
        }
    },
]

def add_modifiers(file):
    f = open(file)
    data = json.load(f)
    f.close()
    if 'modules' in data:
        del data['modules']
    modifiers = []
    gearboxes = [block for block in data['parts'] if block['elements'][0] == 'modularmachinery:blockcasing@3']
    for gearbox in gearboxes:
        for upgrade in upgrades:
            modifiers.append({
                'x': gearbox['x'],
                'y': gearbox['y'],
                'z': gearbox['z'],
                'elements': upgrade['elements'],
                'description': upgrade['description'],
                'modifier': upgrade['modifier']
            })
    data['modifiers'] = modifiers
    if len(modifiers) != 0:
        print(json.dumps(data, indent=4))
    return data

for file in os.listdir():
    if '.json' in file and os.path.isfile(file):
        data = add_modifiers(file)
        f = open(file, "w")
        f.write(json.dumps(data, indent=4))
        f.close()