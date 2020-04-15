//
// DadosPatrimonial.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Informação sobre o Patrimônio do usuário */

@objc public class DadosPatrimonial: NSObject, Codable { 

    public enum FaixaAplicacoes: String, Codable, CaseIterable {
        case _0 = "0"
        case _1 = "1"
        case _2 = "2"
        case _3 = "3"
        case _4 = "4"
        case _5 = "5"
        case _6 = "6"
    }
    public enum FaixaRendimentos: String, Codable, CaseIterable {
        case _0 = "0"
        case _1 = "1"
        case _2 = "2"
        case _3 = "3"
        case _4 = "4"
        case _5 = "5"
        case _6 = "6"
    }
    /** Código do valor total em aplicações financeiras considerando outras instituições. Cada número representa um intervalo de valor em reais (R$). Por exemplo, &#39;0&#39;: &#39;Nenhum&#39;, &#39;1&#39;: &#39;Até R$50.000,00&#39;, &#39;2&#39;: &#39;De R$50.000,01 à R$100.000,00&#39;, &#39;3&#39;: &#39;De R$100.000,01 à R$200.000,00&#39;, &#39;4&#39;: &#39;De R$200.000,01 à R$300.000,00&#39;, &#39;5&#39;: &#39;De R$300.000,01 à R$1.000.000,00&#39;, &#39;6&#39;: &#39;Acima de R$1.000.000,00&#39; */
    public var faixaAplicacoes: FaixaAplicacoes
    /** Valor total em R$ em aplicações financeiras, considerando outras instituições. Este campo só deve ser preenchido caso &#39;faixaAplicacoes&#39; seja acima de R$ 1.000.000,00 */
    public var valorAplicacoes: Double
    /** Código do valor que representa a renta bruta mensal. Cada número representa um intervalo de valor em reais (R$). Por exemplo, &#39;0&#39;: &#39;Nenhum&#39;, &#39;1&#39;: &#39;Até R$5.000,00&#39;, &#39;2&#39;: &#39;De R$5.000,01 à R$10.000,00&#39;, &#39;3&#39;: &#39;De R$10.000,01 à R$20.000,00&#39;, &#39;4&#39;: &#39;De R$20.000,01 à R$30.000,00&#39;, &#39;5&#39;: &#39;De R$30.000,01 à R$100.000,00&#39;, &#39;6&#39;: &#39;Acima de R$100.000,00&#39; */
    public var faixaRendimentos: FaixaRendimentos
    /** Valor total em R$ incluindo móveis, imóveis e outros bens do usuário  - Orbigatório caso &#39;faixaAplicacoes&#39; e &#39;faixaRendimentos&#39; seja &#39;0 - Nenhum&#39; */
    public var valorOutrosBens: Double?

    public init(faixaAplicacoes: FaixaAplicacoes, valorAplicacoes: Double, faixaRendimentos: FaixaRendimentos, valorOutrosBens: Double?) {
        self.faixaAplicacoes = faixaAplicacoes
        self.valorAplicacoes = valorAplicacoes
        self.faixaRendimentos = faixaRendimentos
        self.valorOutrosBens = valorOutrosBens
    }

}
