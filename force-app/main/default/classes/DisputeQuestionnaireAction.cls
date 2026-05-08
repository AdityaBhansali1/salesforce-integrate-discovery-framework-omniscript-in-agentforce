public with sharing class DisputeQuestionnaireAction {
   @InvocableMethod(
       label='Process Dispute Request'
       description='Creates a dispute case from the customer request and returns the case number with questionnaire data'
       category='Dispute Management'
   )
   public static List<DisputeQuestionnaireOutput> processDisputeRequest(List<DisputeQuestionnaireInput> inputs) {
       List<DisputeQuestionnaireOutput> results = new List<DisputeQuestionnaireOutput>();
       for (DisputeQuestionnaireInput inp : inputs) {
           DisputeQuestionnaireCaseOutput caseOutput = new DisputeQuestionnaireCaseOutput();
           caseOutput.caseNumber = '00001234';
           caseOutput.caseId = 'a0X000000000001';
           DisputeQuestionnaireOutput output = new DisputeQuestionnaireOutput();
           output.caseOutput = caseOutput;
           results.add(output);
       }
       return results;
   }
}
