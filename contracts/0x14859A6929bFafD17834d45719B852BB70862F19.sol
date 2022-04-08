contract main {




// =====================  Runtime code  =====================


#
#  - execute(address arg1, uint256 arg2, bytes arg3)
#
address owner;
uint256 stor1;
address factoryAddress;
address routerAddress;
address sub_ffa46577Address;
address goblinAddress;
address sub_05c40a4bAddress;
mapping of address vaults;

function sub_05c40a4b(?) {
    return sub_05c40a4bAddress
}

function owner() {
    return owner
}

function vaults(address arg1) {
    require calldata.size - 4 >= 32
    return vaults[arg1]
}

function goblin() {
    return goblinAddress
}

function factory() {
    return factoryAddress
}

function router() {
    return routerAddress
}

function sub_ffa46577(?) {
    return sub_ffa46577Address
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVault(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    vaults[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
        revert with 0, 'wOwnable: caller is not the owne'
    stor1++
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
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



}
