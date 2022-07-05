contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint8 stor2;
mapping of uint256 sub_0b4d5107;
uint256 fee;
address sub_6c473affAddress;

function sub_0b4d5107(?) {
    require calldata.size - 4 >= 64
    return sub_0b4d5107[arg2 << 240][arg1 << 240]
}

function isApproved(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function sub_6c473aff(?) {
    return sub_6c473affAddress
}

function owner() {
    return owner
}

function sub_c758b017(?) {
    require calldata.size - 4 >= 64
    return sub_0b4d5107[arg1][arg2]
}

function fee() {
    return fee
}

function approvedAddresses(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function _fallback() payable {
  stop
}

function sub_66530579(?) {
    require calldata.size - 4 >= 96
    emit 0xf5f7eeb9: arg1 << 240, arg2 << 240, arg3
}

function setApprovedAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    stor2[address(arg1)] = uint8(arg2)
}

function sub_2ca4a5b0(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function sub_05941644(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_cd84b89d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6c473affAddress = arg1
}

function sub_bccc96d5(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0b4d5107[arg2 << 240][arg1 << 240] = arg3
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failed to withdraw'
    emit Withdraw(address(arg1), arg2);
    stor1 = 1
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

function sub_704316e5(?) {
    require calldata.size - 4 >= 128
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734c617965725a65726f4f7261636c654d6f636b3a2063616c6c6572206d75737420626520617070726f7665,
                    mem[208 len 20]
    require ext_code.size(sub_6c473affAddress)
    call sub_6c473affAddress.0x704316e5 with:
         gas gas_remaining wei
        args 0, 0, arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
