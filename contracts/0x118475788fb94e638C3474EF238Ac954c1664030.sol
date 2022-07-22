contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require owner == msg.sender
    require not eth.balance(this.address)
    owner = arg1
}

function withdraw() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    require ext_code.size(0xdcd0711505f7fb3daa3eb8b358e18020a87d58cc)
    staticcall 0xdcd0711505f7fb3daa3eb8b358e18020a87d58cc.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] > 65534:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1))) % 10:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
