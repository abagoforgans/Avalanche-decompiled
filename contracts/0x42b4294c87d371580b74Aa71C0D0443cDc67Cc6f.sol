contract main {




// =====================  Runtime code  =====================


address sub_557f2b5cAddress;
mapping of uint8 stor1;

function sub_557f2b5c(?) payable {
    return sub_557f2b5cAddress
}

function adminMap(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function updateAdmin(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, 'caller is not admin'
    stor1[address(arg1)] = uint8(arg2)
}

function Sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, 'caller is not admin'
    if not eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failure'
}

function transferForeignToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, 'caller is not admin'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe43616e2774206c657420796f752074616b6520616c6c206e617469766520746f6b65,
                    mem[199 len 29]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function claim(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0, 'caller is not admin'
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = sub_557f2b5cAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _93 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _96 = mem[_93 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_93 + 192])] = mem[_93 + 224 len floor32(mem[_93 + 192])]
    if mem[ceil32(return_data.size) + 192] <= 0:
        revert with 0, 'delegate to claim fail'
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _172 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    if not mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
        require ext_code.size(sub_557f2b5cAddress)
        staticcall sub_557f2b5cAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            require ext_code.size(sub_557f2b5cAddress)
            call sub_557f2b5cAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0x73b295c2 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _96) + ceil32(return_data.size) + 484 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, 0, 160, address(arg2), block.timestamp, 2, mem[(32 * _96) + ceil32(return_data.size) + 484 len 64]
    else:
        if 12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] != 12:
            revert with 0, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _96) + ceil32(return_data.size) + 325 len 31]
        require ext_code.size(sub_557f2b5cAddress)
        staticcall sub_557f2b5cAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10:
            require ext_code.size(sub_557f2b5cAddress)
            call sub_557f2b5cAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0x73b295c2 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _96) + ceil32(return_data.size) + 484 len 0] = None
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 12 * _172 / 10, 0, 160, address(arg2), block.timestamp, 2, mem[(32 * _96) + ceil32(return_data.size) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
