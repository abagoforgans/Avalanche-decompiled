contract main {




// =====================  Runtime code  =====================


#
#  - sub_10812a7d(?)
#
const sub_a09c96bf(?) = eth.balance(this.address)


uint256 stor0;
address aAddress;
address bAddress;
address cAddress;
address dAddress;
address eAddress;
address fAddress;
address gAddress;
address hAddress;
address iAddress;
address jAddress;
address kAddress;
address lAddress;

function a() {
    return aAddress
}

function f() {
    return fAddress
}

function b() {
    return bAddress
}

function d() {
    return dAddress
}

function k() {
    return kAddress
}

function j() {
    return jAddress
}

function h() {
    return hAddress
}

function c() {
    return cAddress
}

function g() {
    return gAddress
}

function i() {
    return iAddress
}

function l() {
    return lAddress
}

function e() {
    return eAddress
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if a() == uint32(call.func_hash) >> 224:
            require not msg.value
            return aAddress
        if uint32(call.func_hash) >> 224 != unknown_0x10812a7d(?????):
            if unknown_0x26121ff0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return fAddress
            if unknown_0x4df7e3d0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bAddress
            if unknown_0x8a054ac2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return dAddress
            if unknown_0xa09c96bf(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return eth.balance(this.address)
            if unknown_0xb4f40c61(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return kAddress
            if unknown_0xb582ec5f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return jAddress
            if unknown_0xb8c9d365(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return hAddress
            if unknown_0xc3da42b8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return cAddress
            if unknown_0xe2179b8e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return gAddress
            if unknown_0xe5aa3d58(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return iAddress
            if unknown_0xece866b9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return lAddress
            require unknown_0xffae15ba(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return eAddress
        stor0 = eth.balance(this.address)
        call aAddress with:
           value eth.balance(this.address) / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call bAddress with:
           value stor0 / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call cAddress with:
           value stor0 / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call dAddress with:
           value stor0 / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call eAddress with:
           value stor0 / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call fAddress with:
           value stor0 / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call gAddress with:
           value stor0 / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call hAddress with:
           value stor0 / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call iAddress with:
           value stor0 / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call jAddress with:
           value stor0 / 20 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        call kAddress with:
           value stor0 / 40 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
        if stor0 > 0xd79435e50d79435e50d79435e50d79435e50d79435e50d79435e50d79435e50:
            revert with 0, 17
        call lAddress with:
           value 19 * stor0 / 40 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
}



}
