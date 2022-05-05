contract main {




// =====================  Runtime code  =====================


#
#  - execute(address arg1, uint256 arg2, bytes arg3)
#
address owner;
uint256 stor1;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
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

function recover(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1++
    mem[196 len 64] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not transfer(address arg1, uint256 arg2), address(arg2) << 64:
            revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
    if stor1 + 1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function getTokenIndex(address arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    mem[96] = 0xc661065700000000000000000000000000000000000000000000000000000000
    mem[100] = var10001
    require ext_code.size(arg2)
    staticcall arg2.mem[var12003 len 4] with:
            gas gas_remaining wei
           args mem[var12003 + 4 len var12004 - 4]
    mem[var12005] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if mem[var16002 + 12 len 20] == arg1:
            return var16004
        require ext_code.size(arg2)
        staticcall arg2.coins(uint256 arg1) with:
                gas gas_remaining wei
               args (var16004 + 1)
        mem[96] = ext_call.return_data[0]
        s = var16004
        while ext_call.success:
            require return_data.size >= 32
            if mem[108 len 20] == arg1:
                return (s + 1)
            mem[100] = s + 2
            require ext_code.size(arg2)
            staticcall arg2.coins(uint256 arg1) with:
                    gas gas_remaining wei
                   args (s + 2)
            mem[96] = ext_call.return_data[0]
            s = s + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
