contract main {




// =====================  Runtime code  =====================


#
#  - getBenqiData(address arg1, address[] arg2)
#
const name = 'Benqi-Resolver-v1', 0

const getQiToken = 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5

const rewardAvax = 1

const getQiAVAXAddress = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c

const getComptroller = 0x486af39519b4dc9a7fccd318217352830e8ad9b4

const getOracleAddress = ext_call.return_data[12 len 20]

const rewardQi = 0


function _fallback() payable {
    revert
}

function getPriceInAvax(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if 10^18 * ext_call.return_data[0] > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
            gas gas_remaining wei
           args 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 18 < ext_call.return_data[0]:
        revert with 0, 17
    if not -ext_call.return_data[0] + 18:
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if 10^18 * ext_call.return_data[0] > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[0]:
            revert with 0, 'math-not-safe'
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], ext_call.return_data[0]
    if bool(bool(-ext_call.return_data[0] + 18 < 78)) or bool(bool(-ext_call.return_data[0] + 18 < 32)):
        if not 10^(-ext_call.return_data[0] + 18):
            revert with 0, 18
        if ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18) and 10^18 > -1 / ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18):
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18) / 10^18 != ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18):
            revert with 0, 'math-not-safe'
        if 10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18) > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        if (10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18):
            revert with 0, 'math-not-safe'
        if not ext_call.return_data[0]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], 
               ext_call.return_data[0] / 10^(-ext_call.return_data[0] + 18)
    s = 10
    t = 1
    idx = -ext_call.return_data[0] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if ext_call.return_data[0] / s * t and 10^18 > -1 / ext_call.return_data[0] / s * t:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] / s * t / 10^18 != ext_call.return_data[0] / s * t:
        revert with 0, 'math-not-safe'
    if 10^18 * ext_call.return_data[0] / s * t > !(ext_call.return_data[0] / 2):
        revert with 0, 17
    if (10^18 * ext_call.return_data[0] / s * t) + (ext_call.return_data[0] / 2) < 10^18 * ext_call.return_data[0] / s * t:
        revert with 0, 'math-not-safe'
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] / s * t) + (ext_call.return_data[0] / 2) / ext_call.return_data[0], 
           ext_call.return_data[0] / s * t
}



}
