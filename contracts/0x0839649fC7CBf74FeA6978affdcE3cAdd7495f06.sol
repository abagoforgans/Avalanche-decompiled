contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_e63023cc(?)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
address sub_c70968e7Address;
address beneficiaryAddress;
address lpAddress;
uint256 sub_296f9ca4;
uint8 stor5;
address wEthAddress; offset 8

function sub_296f9ca4(?) {
    return sub_296f9ca4
}

function lp() {
    return lpAddress
}

function sub_371f274d(?) {
    return bool(stor5)
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function sub_c70968e7(?) {
    return sub_c70968e7Address
}

function wEth() {
    return wEthAddress
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_f602f731(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_296f9ca4 = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function sub_e4fdd485(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == owner
    stor5 = uint8(bool(arg1))
}

function sub_f24ef3c4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    lpAddress = address(arg1)
}

function sub_a2899a25(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    wEthAddress = address(arg1)
}

function updateBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function collectEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e35a25b2(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    call address(arg1) with:
       value arg3 wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_027d6f56(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _12
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, _12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == bool(mem[_15])
        idx = idx + 1
        continue 
}

function sub_627d51a2(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 68).length) + 128 len 64] = call.data[calldata.size len 64]
    if 0 < ('cd', 68).length:
        _40 = mem[128]
        if 1 < ('cd', 68).length:
            mem[(32 * ('cd', 68).length) + 196] = mem[172 len 20]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args mem[172 len 20]
            mem[(32 * ('cd', 68).length) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 196] = mem[172 len 20]
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[172 len 20]
            mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= cd[36]:
                return call.data[calldata.size len 64]
            if (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4):
                mem[(32 * ('cd', 68).length) + 128] = (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1
                if ('cd', 68).length != 4:
                    return (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1, 
                           call.data[calldata.size + 32]
                if 2 < ('cd', 68).length:
                    if 3 < ('cd', 68).length:
                        require ext_code.size(address(_40))
                        staticcall address(_40).0x70a08231 with:
                                gas gas_remaining wei
                               args mem[236 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(mem[204 len 20])
                        staticcall mem[204 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[236 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1:
                            return 0, call.data[calldata.size + 32]
                        if (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * sub_296f9ca4):
                            return (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4)) + 1, 
                                   ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * cd[36] / (ext_call.return_data[0] * sub_296f9ca4) - (cd[36] * sub_296f9ca4) * sub_296f9ca4)) + 1
    revert
}

function sub_e4d92584(?) {
    require calldata.size - 4 >= 288
    require cd[36] == address(cd[36])
    require 164 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require cd[196] == address(cd[196])
    require cd[228] == address(cd[228])
    require cd[132] == address(cd[132])
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[36])
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require cd[100] == address(cd[100])
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args address(cd[36])
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < cd[4]:
        emit 0xca594936: cd[4], 2 * ext_call.return_data[0]
    else:
        require sub_296f9ca4
        mem[(2 * ceil32(return_data.size)) + 96 len 64] = call.data[calldata.size len 64]
        if not cd[4]:
            mem[(2 * ceil32(return_data.size)) + 96] = (1000 * (ext_call.return_data[0] * cd[260]) + (ext_call.return_data[0] * cd[260]) / 1000 / sub_296f9ca4) + 1
            if not (1000 * (ext_call.return_data[0] * cd[260]) + (ext_call.return_data[0] * cd[260]) / 1000 / sub_296f9ca4) + 1:
                revert with 0, 'not find uniswap path'
            require cd[68] == address(cd[68])
            require cd[68] == address(cd[68])
            mem[(2 * ceil32(return_data.size)) + 192] = address(cd[36])
            mem[(2 * ceil32(return_data.size)) + 224] = address(cd[68])
            mem[(2 * ceil32(return_data.size)) + 256] = (ext_call.return_data[0] * cd[260]) + (ext_call.return_data[0] * cd[260]) / 1000
            mem[(2 * ceil32(return_data.size)) + 288 len 64] = (1000 * (ext_call.return_data[0] * cd[260]) + (ext_call.return_data[0] * cd[260]) / 1000 / sub_296f9ca4) + 1, call.data[calldata.size + 32]
            mem[(2 * ceil32(return_data.size)) + 352] = 224
            mem[(2 * ceil32(return_data.size)) + 416] = ('cd', 164).length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 448
            t = cd[164] + 36
            while idx < ('cd', 164).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[68])
            require 1 < ('cd', 164).length
            require ('cd', 164)[1] == address(('cd', 164)[1])
            sub_c70968e7Address = address(('cd', 164)[1])
            require cd[68] == address(cd[68])
            require 1 < ('cd', 164).length
            require ('cd', 164)[1] == address(('cd', 164)[1])
            mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if address(cd[68]) >= address(cd[196]):
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 484] = (ext_call.return_data[0] * cd[260]) + (ext_call.return_data[0] * cd[260]) / 1000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 516] = this.address
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 548] = 128
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 580] = mem[(2 * ceil32(return_data.size)) + 160]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])] = mem[(2 * ceil32(return_data.size)) + 192 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[(2 * ceil32(return_data.size)) + 160]) > mem[(2 * ceil32(return_data.size)) + 160]:
                    mem[mem[(2 * ceil32(return_data.size)) + 160] + (2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612] = 0
                require ext_code.size(address(('cd', 164)[1]))
                call address(('cd', 164)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (ext_call.return_data[0] * cd[260]) + (ext_call.return_data[0] * cd[260]) / 1000, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 160], mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])]
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = (ext_call.return_data[0] * cd[260]) + (ext_call.return_data[0] * cd[260]) / 1000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 484] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 516] = this.address
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 548] = 128
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 580] = mem[(2 * ceil32(return_data.size)) + 160]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])] = mem[(2 * ceil32(return_data.size)) + 192 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[(2 * ceil32(return_data.size)) + 160]) > mem[(2 * ceil32(return_data.size)) + 160]:
                    mem[mem[(2 * ceil32(return_data.size)) + 160] + (2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612] = 0
                require ext_code.size(address(('cd', 164)[1]))
                call address(('cd', 164)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * cd[260]) + (ext_call.return_data[0] * cd[260]) / 1000, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 160], mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])]
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = (1000 * cd[260] * cd[4] / 1000 / sub_296f9ca4) + 1
            if not (1000 * cd[260] * cd[4] / 1000 / sub_296f9ca4) + 1:
                revert with 0, 'not find uniswap path'
            require cd[68] == address(cd[68])
            require cd[68] == address(cd[68])
            mem[(2 * ceil32(return_data.size)) + 192] = address(cd[36])
            mem[(2 * ceil32(return_data.size)) + 224] = address(cd[68])
            mem[(2 * ceil32(return_data.size)) + 256] = cd[260] * cd[4] / 1000
            mem[(2 * ceil32(return_data.size)) + 288 len 64] = (1000 * cd[260] * cd[4] / 1000 / sub_296f9ca4) + 1, call.data[calldata.size + 32]
            mem[(2 * ceil32(return_data.size)) + 352] = 224
            mem[(2 * ceil32(return_data.size)) + 416] = ('cd', 164).length
            idx = 0
            s = (2 * ceil32(return_data.size)) + 448
            t = cd[164] + 36
            while idx < ('cd', 164).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 384] = address(cd[68])
            require 1 < ('cd', 164).length
            require ('cd', 164)[1] == address(('cd', 164)[1])
            sub_c70968e7Address = address(('cd', 164)[1])
            require cd[68] == address(cd[68])
            require 1 < ('cd', 164).length
            require ('cd', 164)[1] == address(('cd', 164)[1])
            mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 448] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if address(cd[68]) >= address(cd[196]):
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 484] = cd[260] * cd[4] / 1000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 516] = this.address
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 548] = 128
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 580] = mem[(2 * ceil32(return_data.size)) + 160]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])] = mem[(2 * ceil32(return_data.size)) + 192 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[(2 * ceil32(return_data.size)) + 160]) > mem[(2 * ceil32(return_data.size)) + 160]:
                    mem[mem[(2 * ceil32(return_data.size)) + 160] + (2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612] = 0
                require ext_code.size(address(('cd', 164)[1]))
                call address(('cd', 164)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[260] * cd[4] / 1000, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 160], mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])]
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = cd[260] * cd[4] / 1000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 484] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 516] = this.address
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 548] = 128
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 580] = mem[(2 * ceil32(return_data.size)) + 160]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])] = mem[(2 * ceil32(return_data.size)) + 192 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])]
                if ceil32(mem[(2 * ceil32(return_data.size)) + 160]) > mem[(2 * ceil32(return_data.size)) + 160]:
                    mem[mem[(2 * ceil32(return_data.size)) + 160] + (2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612] = 0
                require ext_code.size(address(('cd', 164)[1]))
                call address(('cd', 164)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[260] * cd[4] / 1000, 0, address(this.address), 128, mem[(2 * ceil32(return_data.size)) + 160], mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 612 len ceil32(mem[(2 * ceil32(return_data.size)) + 160])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor5:
            mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = this.address
            require ext_code.size(wEthAddress)
            staticcall wEthAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 4 * 10^18:
                mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = ext_call.return_data[0]
                require ext_code.size(wEthAddress)
                call wEthAddress.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452 len (5 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call beneficiaryAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
        else:
            require cd[68] == address(cd[68])
            if address(cd[68]) == wEthAddress:
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = this.address
                require ext_code.size(wEthAddress)
                staticcall wEthAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 448] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 4 * 10^18:
                    mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = ext_call.return_data[0]
                    require ext_code.size(wEthAddress)
                    call wEthAddress.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452 len (5 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call beneficiaryAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            else:
                if not address(cd[228]):
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = this.address
                    require ext_code.size(wEthAddress)
                    staticcall wEthAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 448] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 4 * 10^18:
                        mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = ext_call.return_data[0]
                        require ext_code.size(wEthAddress)
                        call wEthAddress.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452 len (5 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call beneficiaryAddress with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require cd[68] == address(cd[68])
                    if not address(cd[228]):
                        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = this.address
                        require ext_code.size(wEthAddress)
                        staticcall wEthAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 4 * 10^18:
                            mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = ext_call.return_data[0]
                            require ext_code.size(wEthAddress)
                            call wEthAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452 len (5 * ceil32(return_data.size)) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call beneficiaryAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = address(cd[228])
                        require ext_code.size(wEthAddress)
                        staticcall wEthAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[228])
                        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 448] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = address(cd[228])
                        require ext_code.size(address(cd[68]))
                        staticcall address(cd[68]).0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452 len (5 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452] = this.address
                        require ext_code.size(address(cd[68]))
                        staticcall address(cd[68]).0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 452 len (7 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[68])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(address(cd[68])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 548 len floor32((13 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), address(cd[228]) << 64, 0, ext_call.return_data[0], mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 548 len floor32((13 * ceil32(return_data.size)) + 99) - 68]
                        if floor32((13 * ceil32(return_data.size)) + 99) > (13 * ceil32(return_data.size)) + 68:
                            mem[(22 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 616] = 0
                        call address(cd[68]).mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 548 len 4] with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 552 len (29 * ceil32(return_data.size)) + 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                                if not 0, mem[132 len 28]:
                                    revert with 0, 'SafeERC20 transfer: ERC20 operation did not succeed'
                        else:
                            mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 580] == bool(mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 580])
                                if not mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 164).length) + 580]:
                                    revert with 0, 'SafeERC20 transfer: ERC20 operation did not succeed'
                        require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                        require ext_code.size(address(cd[228]))
                        if address(cd[68]) >= wEthAddress:
                            call address(cd[228]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                        else:
                            call address(cd[228]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wEthAddress)
                        staticcall wEthAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 4 * 10^18:
                            require ext_code.size(wEthAddress)
                            call wEthAddress.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call beneficiaryAddress with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
}



}
