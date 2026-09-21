import { Component, inject, OnInit } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { MatButtonModule } from '@angular/material/button';

@Component({
  selector: 'app-sobre',
  imports: [MatCardModule, MatButtonModule],
  templateUrl: './sobre.html',
  styleUrl: './sobre.css',
})
export class Sobre {}
