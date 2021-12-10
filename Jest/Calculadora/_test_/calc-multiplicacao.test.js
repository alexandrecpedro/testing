const { multiplicacao } = require('../calc');

describe('Teste de multiplicação', () => {
    test('Multiplicação de 2 números', () => {
        expect(multiplicacao(3,2)).toBe(6);
    })
    
    test('Multiplicação de 0', () => {
        expect(multiplicacao(0,0)).toBe(0);
    })

    test('Multiplicação de nulos', () => {
        expect(multiplicacao(null, null)).toBe(0);
    })

    test('Multiplicação de texto', () => {
        expect(multiplicacao('a', 'b')).toBe(NaN);
    })
    
    test('Multiplicação de undefined', () => {
        expect(multiplicacao()).toBe(NaN);
    })
})