import { Injectable } from '@angular/core';
declare var webkitSpeechRecognition:any
@Injectable({
  providedIn: 'root'
})
export class SpeechtotextService {
  recognition =  new webkitSpeechRecognition();
  isStoppedSpeechRecog = false;
  public text = '';
  tempWords!: string;
  constructor() { }

  init() {
 
    this.recognition.interimResults = true;
    this.recognition.lang = 'fr-FR';
 
    this.recognition.addEventListener('result', (e: { results: Iterable<unknown> | ArrayLike<unknown>; }) => {
      const transcript = Array.from(e.results)
        .map((result: any) => result[0])
        .map((result) => result.transcript)
        .join('');
      this.tempWords = transcript;
      // console.log(transcript);
    });
  }
 
  start() {
    this.isStoppedSpeechRecog = false;
    this.recognition.start();
    console.log("Speech recognition started");
    this.recognition.addEventListener('end', () => {
      if (this.isStoppedSpeechRecog) {
        this.recognition.stop();
        console.log("End speech recognition");
      } else {
        this.wordConcat();
        this.recognition.start();
      }
    });
  }
  stop() {
    this.isStoppedSpeechRecog = true;
    this.wordConcat();
    this.recognition.stop();
    console.log("End speech recognition");
  }
 
  wordConcat() {
    this.text = this.text + ' ' + this.tempWords + '.';
    this.tempWords = '';
  }
  
}
