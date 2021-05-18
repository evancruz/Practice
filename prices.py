import json

def readFile(): 
    with open("foodItems.txt", "r") as f1, open("foodItemsCost.txt", "w") as f2:
        for line in f1:
            # print(f"line: {line}")
            categories = line.split(",")
            categories[-1] = categories[-1].strip()       
            foodItem = categories[0]
            price = categories[1]
            amount = categories[2]

            costPerGram = str(format(float(price)/float(amount), ".2f"))
            all = (foodItem, ",", price, ",", amount, ",", costPerGram, "\n")
            f2.writelines(all)



    f1.close()
    f2.close()

# def readAgain(): 
#     f1 = open("foodItemsCost.txt", "r")
#     for line in f1:
#         print(f"line: {line}")
#     f1.close()


if __name__ == "__main__":
    readFile()


# flask for api