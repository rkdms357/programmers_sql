def solution(numbers):
    answer = 0
    for n in numbers:
        answer += n
    answer = answer/len(numbers)
    return answer