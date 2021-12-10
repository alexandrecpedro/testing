const { subtracao } = require('../calc');

describe('Teste de subtração', () => {
    test('Subtração de 2 números', () => {
        expect(subtracao(5,1)).toBe(4);
    })
    
    test('Subtração de 0', () => {
        expect(subtracao(0,0)).toBe(0);
    })

    test('Subtração de nulos', () => {
        expect(subtracao(null, null)).toBe(0);
    })

    test('Subtração de texto', () => {
        expect(subtracao('a', 'b')).toBe(NaN);
    })
    
    test('Subtração de undefined', () => {
        expect(subtracao()).toBe(NaN);
    })
})