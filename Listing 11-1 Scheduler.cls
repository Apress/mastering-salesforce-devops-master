// Listing 11-1: Starter code for scheduling and aborting jobs

public with sharing class JobScheduler {
    public static void scheduleAll(){
        System.schedule('scheduledJob1','0 0 2 ? * SAT', new ScheduledJob1());
        System.schedule('ScheduledJob2','0 1 * * * ?', new ScheduledJob1());
    }

    public static void abortAll(){
        for(CronTrigger ct : getScheduledJobs()){
        system.abortJob(ct.Id);
        }
    }

    private static CronTrigger[] getScheduledJobs() {
        final string SCHEDULED_JOB = '7';
        return [
            SELECT Id, CronJobDetail.Name, CronExpression, State
            FROM CronTrigger
            WHERE CronJobDetail.JobType = :SCHEDULED_JOB];
        }
}
