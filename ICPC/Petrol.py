# http://icpc.sharif.ir/2019/problems/P98.pdf
# Petrol
def hesab(benzin, kole_sahmie):
    litr_sahmie = 1500
    litr_azad = 3000
    amount = 0
    if benzin <= kole_sahmie:
        for _ in range(benzin):
            amount += litr_sahmie
        return amount
    else:
        benzin_azad = benzin - kole_sahmie
        benzin_ba_sahmie = benzin - benzin_azad
        for _ in range(benzin_azad):
            amount += litr_azad
        for _ in range(benzin_ba_sahmie):
            amount += litr_sahmie
        return amount

benzin_dar_mah_ayande = int(input())
sahmie_beznin_dar_mah_jari = int(input())
kol_sahmie = 60 + sahmie_beznin_dar_mah_jari
print(hesab(benzin_dar_mah_ayande, kol_sahmie))