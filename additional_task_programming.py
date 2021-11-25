def func(nums, target):
    answer = []
    for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            if nums[i] + nums[j] == target:
                answer.append(i)
                answer.append(j)
                break
                
    if len(answer) == 0:
        print("Нет подходящих пар чисел")
    else:
        print(answer)
        
if __name__ == "__main__":
    nums = [1, 2, 3, 4, 5, 10, 15]
    target = 20
    func(nums, target)
