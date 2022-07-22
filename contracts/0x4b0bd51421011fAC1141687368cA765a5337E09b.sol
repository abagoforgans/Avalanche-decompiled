contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
mapping of uint8 stor4;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAddress(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
    stor2 = arg2
    stor3 = arg3
}

function withdrawAvax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_b913293f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function doBuyback() {
    if not stor4[msg.sender]:
        revert with 0, 'Not authorized'
    require ext_code.size(stor3)
    staticcall stor3.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = stor1
    if not eth.balance(this.address):
        mem[ceil32(return_data.size) + 192] = 26
        idx = 0
        s = ceil32(return_data.size) + 420
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, 128, stor2, block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
    else:
        if eth.balance(this.address) and 98 > -1 / eth.balance(this.address):
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if 98 * eth.balance(this.address) / eth.balance(this.address) != 98:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[ceil32(return_data.size) + 192] = 26
        idx = 0
        s = ceil32(return_data.size) + 420
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value 98 * eth.balance(this.address) / 100 wei
             gas gas_remaining wei
            args 0, 128, stor2, block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xb913293f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[36] == bool(cd[36])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 4
                    stor4[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0xdb6c00f2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call address(cd[4]) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(cd[4]));
                    owner = address(cd[4])
        else:
            if unknown_0x3be08dab(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[68] == address(cd[68])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor1 = address(cd[4])
                stor2 = address(cd[36])
                stor3 = address(cd[68])
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x6d3d8550(?????):
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
                    require not msg.value
                    if not stor4[msg.sender]:
                        revert with 0, 'Not authorized'
                    require ext_code.size(stor3)
                    staticcall stor3.WAVAX() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[192] = stor1
                    if not eth.balance(this.address):
                        mem[ceil32(return_data.size) + 224] = 26
                        idx = 0
                        s = ceil32(return_data.size) + 452
                        t = 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, stor2, block.timestamp, 2, mem[ceil32(return_data.size) + 452 len 64]
                    else:
                        if eth.balance(this.address) and 98 > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if not eth.balance(this.address):
                            revert with 0, 18
                        if 98 * eth.balance(this.address) / eth.balance(this.address) != 98:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[ceil32(return_data.size) + 224] = 26
                        idx = 0
                        s = ceil32(return_data.size) + 452
                        t = 160
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor3)
                        call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value 98 * eth.balance(this.address) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, stor2, block.timestamp, 2, mem[ceil32(return_data.size) + 452 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
