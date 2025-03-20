export class Employee {
    name: string;
    age: number;
    job: Job;

    constructor(name: string, age: number, job: Job) {
        this.name = name;
        this.age = age;
        this.job = job;
    }
}


// 2. 第⼆层数据的类定义需要使⽤ @Observed 装饰器进⾏装饰
@Observed
export class Job {
    name: string;
    salary: number;

    constructor(name: string, salary: number) {
        this.name = name;
        this.salary = salary;
    }
}