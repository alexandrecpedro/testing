const { divisao } = require('../calc');

describe('Teste de divisão', () => {
    test('Divisão de 2 números', () => {
        expect(divisao(9,3)).toBe(3);
    })

    test('Divisão de 0', () => {
        expect(divisao(0,0)).toBe(NaN);
    })

    test('Divisão de nulos', () => {
        expect(divisao(null, null)).toBe(NaN);
    })

    test('Divisão de texto', () => {
        expect(divisao('a', 'b')).toBe(NaN);
    })
    
    test('Divisão de undefined', () => {
        expect(divisao()).toBe(NaN);
    })
})