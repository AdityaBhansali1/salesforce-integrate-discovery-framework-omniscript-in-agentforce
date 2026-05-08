import { LightningElement, api, track } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import pubsub from 'omnistudio/pubsub';


export default class DisplayDisputeQuestionnaire extends NavigationMixin(LightningElement) {
   _value;
   @api
   get value() {
       return this._value;
   }
   set value(value) {
       this._value = value;
   }
   @track prefill; assessmentId; caseNumber; caseId;
   connectedCallback() {
       this.caseNumber = this.value?.caseOutput?.caseNumber || null;
       this.caseId = this.value?.caseOutput?.caseId || null;
       pubsub.register('omniscript_action', {
           data: this.handleOmniAction.bind(this),
       });
   }
   handleOmniAction(data) {
       this.assessmentId = data?.assessmentId || null;
   }
}
