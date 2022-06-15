contract main {




// =====================  Runtime code  =====================


#
#  - revokeAllowance(address arg1, address arg2)
#  - recoverERC20(address arg1, uint256 arg2)
#  - swap(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5)
#
const sub_700d85ae(?) = 0x1e3ba199b4ff4b5b6e97acd96dafc0e2e4156e

const sub_71511a5e(?) = 0x7f90122bf0700f9e7e1f688fe926940e8839f353

const id = 0xbfb5ca01c5df50b743608798c5e014b7473018449a0e27e36cb16b34d6ad8dc3

const sub_f8da4cd6(?) = 0xf577433bf59560ef2a79c124e9ff99fca258948

const POOL = 0xb3f21fc59bc06209d5fb82c474f21582aef09a20


address owner;
uint256 swapGasEstimate;
array of uint256 name;
mapping of uint256 stor3;
mapping of uint8 stor4;

function name() {
    return name[0 len name.length]
}

function swapGasEstimate() {
    return swapGasEstimate
}

function owner() {
    return owner
}

function sub_a8bad207(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function setAllowances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function tokenIndex(address arg1) {
    require calldata.size - 4 >= 32
    return ('signextend', 15, ('signextend', 15, ('stor', ('map', ('param', 'arg1'), ('name', 'stor3', 3)))))
}

function setSwapGasEstimate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    swapGasEstimate = arg1
    emit 0xf43f23b7: arg1, this.address
}

function recoverAVAX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'YakAdapter: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a204e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function query(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        return 0
    if arg2 == arg3:
        return 0
    if arg3 != 0xf577433bf59560ef2a79c124e9ff99fca258948:
        if arg2 != 0xf577433bf59560ef2a79c124e9ff99fca258948:
            return 0
        if not stor4[address(arg3)]:
            return 0
    else:
        if not stor4[address(arg2)]:
            if arg2 != 0xf577433bf59560ef2a79c124e9ff99fca258948:
                return 0
            if not stor4[address(arg3)]:
                return 0
    require ext_code.size(0xb3f21fc59bc06209d5fb82c474f21582aef09a20)
    staticcall 0xb3f21fc59bc06209d5fb82c474f21582aef09a20.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor3', 3))))), ('signextend', 15, ('signextend', 15, ('stor', ('map', ('param', 'arg3'), ('name', 'stor3', 3))))), arg1
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    return (9996 * ext_call.return_data[0] / 10000)
}



}
