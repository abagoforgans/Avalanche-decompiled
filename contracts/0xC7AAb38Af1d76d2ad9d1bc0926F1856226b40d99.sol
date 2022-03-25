contract main {




// =====================  Runtime code  =====================


address owner;
address minerAddress;
address sub_3e938610Address;
address sub_e09966a8Address;
address sub_7a42c6ecAddress;
address sub_fc40fc1aAddress;
address targetWalletAddress;

function miner() payable {
    return minerAddress
}

function sub_3e938610(?) payable {
    return sub_3e938610Address
}

function sub_7a42c6ec(?) payable {
    return sub_7a42c6ecAddress
}

function owner() payable {
    return owner
}

function targetWallet() payable {
    return targetWalletAddress
}

function sub_e09966a8(?) payable {
    return sub_e09966a8Address
}

function sub_fc40fc1a(?) payable {
    return sub_fc40fc1aAddress
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_7cc6a683(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3e938610Address = arg4
    sub_e09966a8Address = arg1
    sub_7a42c6ecAddress = arg2
    sub_fc40fc1aAddress = arg3
    targetWalletAddress = arg5
}

function sub_ce438513(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args minerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_3e938610Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_e09966a8Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_7a42c6ecAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_fc40fc1aAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fa31eaa4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(sub_e09966a8Address)
    staticcall sub_e09966a8Address.0x70a08231 with:
            gas gas_remaining wei
           args minerAddress
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    if mem[140 len 20] == sub_e09966a8Address:
        mem[(32 * arg1.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
        mem[(32 * arg1.length) + 164] = 0
        mem[(32 * arg1.length) + 228] = minerAddress
        mem[(32 * arg1.length) + 260] = block.timestamp + 60
        mem[(32 * arg1.length) + 196] = 160
        mem[(32 * arg1.length) + 292] = arg1.length
        mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(sub_3e938610Address)
        call sub_3e938610Address.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, minerAddress, block.timestamp + 60, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _124 = mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]) + 32 <= return_data.size
        mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]
        _130 = mem[_124 + (32 * arg1.length) + 128]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[_124 + (32 * arg1.length) + 128])] = mem[_124 + (32 * arg1.length) + 160 len floor32(mem[_124 + (32 * arg1.length) + 128])]
        mem[64] = (32 * _130) + (32 * arg1.length) + ceil32(return_data.size) + 160
    else:
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].enter(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
        mem[(32 * arg1.length) + 164] = 0
        mem[(32 * arg1.length) + 228] = minerAddress
        mem[(32 * arg1.length) + 260] = block.timestamp + 60
        mem[(32 * arg1.length) + 196] = 160
        mem[(32 * arg1.length) + 292] = arg1.length
        mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(sub_3e938610Address)
        call sub_3e938610Address.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, minerAddress, block.timestamp + 60, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _126 = mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]) + 32 <= return_data.size
        mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]
        _131 = mem[_126 + (32 * arg1.length) + 128]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[_126 + (32 * arg1.length) + 128])] = mem[_126 + (32 * arg1.length) + 160 len floor32(mem[_126 + (32 * arg1.length) + 128])]
        mem[64] = (32 * _131) + (32 * arg1.length) + ceil32(return_data.size) + 160
    require 0 < arg1.length
    if mem[140 len 20] == sub_e09966a8Address:
        require arg1.length - 1 < arg1.length
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * arg1.length - 1) + 140 len 20])
        call mem[(32 * arg1.length - 1) + 140 len 20].leave(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * mem[(32 * arg1.length) + ceil32(return_data.size) + 128] - 1) + (32 * arg1.length) + ceil32(return_data.size) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e09966a8Address)
    staticcall sub_e09966a8Address.0x70a08231 with:
            gas gas_remaining wei
           args minerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        else:
            return 0
    else:
        return 0
}

function sub_a7bd2945(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(sub_e09966a8Address)
    staticcall sub_e09966a8Address.0x70a08231 with:
            gas gas_remaining wei
           args minerAddress
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    if mem[140 len 20] == sub_e09966a8Address:
        mem[(32 * arg1.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
        mem[(32 * arg1.length) + 164] = 0
        mem[(32 * arg1.length) + 228] = minerAddress
        mem[(32 * arg1.length) + 260] = block.timestamp + 60
        mem[(32 * arg1.length) + 196] = 160
        mem[(32 * arg1.length) + 292] = arg1.length
        mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(sub_3e938610Address)
        call sub_3e938610Address.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, minerAddress, block.timestamp + 60, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _180 = mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]) + 32 <= return_data.size
        mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]
        _186 = mem[_180 + (32 * arg1.length) + 128]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[_180 + (32 * arg1.length) + 128])] = mem[_180 + (32 * arg1.length) + 160 len floor32(mem[_180 + (32 * arg1.length) + 128])]
        mem[64] = (32 * _186) + (32 * arg1.length) + ceil32(return_data.size) + 160
    else:
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].enter(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
        mem[(32 * arg1.length) + 164] = 0
        mem[(32 * arg1.length) + 228] = minerAddress
        mem[(32 * arg1.length) + 260] = block.timestamp + 60
        mem[(32 * arg1.length) + 196] = 160
        mem[(32 * arg1.length) + 292] = arg1.length
        mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(sub_3e938610Address)
        call sub_3e938610Address.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, minerAddress, block.timestamp + 60, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
        require return_data.size >= 32
        _182 = mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28]
        require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]) + 32 <= return_data.size
        mem[(32 * arg1.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]
        _187 = mem[_182 + (32 * arg1.length) + 128]
        mem[(32 * arg1.length) + ceil32(return_data.size) + 160 len floor32(mem[_182 + (32 * arg1.length) + 128])] = mem[_182 + (32 * arg1.length) + 160 len floor32(mem[_182 + (32 * arg1.length) + 128])]
        mem[64] = (32 * _187) + (32 * arg1.length) + ceil32(return_data.size) + 160
    require 0 < arg1.length
    if mem[140 len 20] == sub_e09966a8Address:
        require arg1.length - 1 < arg1.length
        require mem[(32 * arg1.length) + ceil32(return_data.size) + 128] - 1 < mem[(32 * arg1.length) + ceil32(return_data.size) + 128]
        require ext_code.size(mem[(32 * arg1.length - 1) + 140 len 20])
        call mem[(32 * arg1.length - 1) + 140 len 20].leave(uint256 rg1) with:
             gas gas_remaining wei
            args mem[(32 * mem[(32 * arg1.length) + ceil32(return_data.size) + 128] - 1) + (32 * arg1.length) + ceil32(return_data.size) + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_e09966a8Address)
    staticcall sub_e09966a8Address.0x70a08231 with:
            gas gas_remaining wei
           args minerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3:
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            revert with 0, 'No Profit'
    if ext_call.return_data[0] > arg2:
        if arg2 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_e09966a8Address)
        call sub_e09966a8Address.0xa9059cbb with:
             gas gas_remaining wei
            args targetWalletAddress, ext_call.return_data[0] - arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
