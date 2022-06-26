contract main {




// =====================  Runtime code  =====================


array of address stor0;
array of uint256 stor1;
uint8 stor2;

function withdrawFund() {
    if stor2:
        revert with 0, 'No reentrancy'
    stor2 = 1
    idx = 0
    s = 0
    while idx < stor0.length:
        if idx >= stor1.length:
            revert with 0, 50
        if eth.balance(this.address) and stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)] > -1 / eth.balance(this.address):
            revert with 0, 17
        if idx >= stor0.length:
            revert with 0, 50
        mem[0] = 0
        call stor0[idx] with:
           value eth.balance(this.address) * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)] / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = eth.balance(this.address) * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)] / 100
        continue 
    stor2 = 0
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0xe07fa3c1(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if stor2:
                revert with 0, 'No reentrancy'
            stor2 = 1
            idx = 0
            s = 0
            while idx < stor0.length:
                if idx >= stor1.length:
                    revert with 0, 50
                if eth.balance(this.address) and stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)] > -1 / eth.balance(this.address):
                    revert with 0, 17
                if idx >= stor0.length:
                    revert with 0, 50
                mem[0] = 0
                call stor0[idx] with:
                   value eth.balance(this.address) * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)] / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = eth.balance(this.address) * stor('array', ('div', 0.0625, ('var', 0)), ('name', 'stor1', 1))[uint8(idx)] / 100
                continue 
            stor2 = 0
}



}
