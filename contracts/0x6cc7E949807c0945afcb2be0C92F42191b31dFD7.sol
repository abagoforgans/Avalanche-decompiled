contract main {




// =====================  Runtime code  =====================


#
#  - addTokenLiquidity(address arg1, uint256 arg2)
#
const sub_3ed77114(?) = 10^18


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 stor1;
address stor101;
uint64 stor151;
uint128 stor151; offset 64
address owner;
uint8 paused;
address stor251;
address stor252;
address stor253;
address stor254;
address stor255;
mapping of uint256 sub_0102c154;
mapping of uint256 sub_b3524e30;
mapping of uint256 sub_ca2ba943;
mapping of uint256 sub_d1b4f192;
mapping of uint256 sub_b0261e53;

function sub_0102c154(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0102c154[address(arg1)]
}

function sub_4e7e36e2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0102c154[arg1]
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function sub_b0261e53(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b0261e53[arg1]
}

function sub_b3524e30(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b3524e30[address(arg1)]
}

function totalLiquidity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b3524e30[arg1]
}

function sub_ca2ba943(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ca2ba943[address(arg1)]
}

function sub_d1b4f192(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d1b4f192[arg1]
}

function sub_f0ff372e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d1b4f192[address(arg1)]
}

function currentLiquidity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_ca2ba943[arg1]
}

function _fallback() payable {
    revert
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor251)
}

function isTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor101)
}

function renouncePauser() {
    if stor251 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    emit PauserChanged(stor251, 0);
    stor251 = 0
}

function sub_52a30127(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_b0261e53[address(arg1)]:
        return 10^18
    if not sub_0102c154[address(arg1)]:
        revert with 0, 18
    return (sub_b0261e53[address(arg1)] / sub_0102c154[address(arg1)])
}

function sub_4f20f840(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 and sub_0102c154[address(arg2)] > -1 / arg1:
        revert with 0, 17
    if not sub_b0261e53[address(arg2)]:
        revert with 0, 18
    return (arg1 * sub_0102c154[address(arg2)] / sub_b0261e53[address(arg2)])
}

function changePauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor251 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    require arg1
    emit PauserChanged(stor251, arg1);
    stor251 = arg1
}

function renounceOwnership() {
    if stor101 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setLpToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    stor252 = arg1
}

function setTokenManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    stor254 = arg1
}

function setLiquidityPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    stor253 = arg1
}

function sub_e479b099(?) {
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    if stor101 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    stor255 = address(cd[4])
}

function pause() {
    if stor251 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    if stor101 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() {
    if stor251 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    if stor101 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function sub_d7ac683c(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[32]
}

function sub_dd8b9923(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    if stor101 != msg.sender:
        if stor253 != msg.sender:
            revert with 0, 'ERR__UNAUTHORIZED'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != stor253:
            revert with 0, 'ERR__UNAUTHORIZED'
    if sub_ca2ba943[address(cd[4])] < cd[36]:
        revert with 0, 17
    sub_ca2ba943[address(cd[4])] -= cd[36]
    emit 0xf2804403: address(cd[4]), sub_ca2ba943[address(cd[4])]
}

function sub_53403fb5(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    if stor101 != msg.sender:
        if stor253 != msg.sender:
            revert with 0, 'ERR__UNAUTHORIZED'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != stor253:
            revert with 0, 'ERR__UNAUTHORIZED'
    if sub_ca2ba943[address(cd[4])] > !cd[36]:
        revert with 0, 17
    sub_ca2ba943[address(cd[4])] += cd[36]
    emit 0xf2804403: address(cd[4]), sub_ca2ba943[address(cd[4])]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_9326b08a(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    if stor101 != msg.sender:
        if stor253 != msg.sender:
            revert with 0, 'ERR__UNAUTHORIZED'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != stor253:
            revert with 0, 'ERR__UNAUTHORIZED'
    if not address(cd[4]):
        revert with 0, 'Token address cannot be 0'
    require ext_code.size(stor254)
    staticcall stor254.0xfa5e2abc with:
            gas gas_remaining wei
           args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    if not ext_call.return_data[32]:
        revert with 0, 'Token not supported'
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_0102c154[address(cd[4])] > !cd[36]:
        revert with 0, 17
    sub_0102c154[address(cd[4])] += cd[36]
    if sub_d1b4f192[address(cd[4])] > !cd[36]:
        revert with 0, 17
    sub_d1b4f192[address(cd[4])] += cd[36]
    emit FeeAdded(address(cd[4]), cd[36]);
}

function sub_c47296bd(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor252)
    staticcall stor252.0x4f558e79 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR__INVALID_NFT'
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[64] != 0:
        if ext_call.return_data[64] and sub_0102c154[ext_call.return_data[12 len 20]] > -1 / ext_call.return_data[64]:
            revert with 0, 17
        if not sub_b0261e53[ext_call.return_data[12 len 20]]:
            revert with 0, 18
        if ext_call.return_data[32] <= ext_call.return_data[64] * sub_0102c154[ext_call.return_data[12 len 20]] / sub_b0261e53[ext_call.return_data[12 len 20]]:
            return ((ext_call.return_data[64] * sub_0102c154[ext_call.return_data[12 len 20]] / sub_b0261e53[ext_call.return_data[12 len 20]]) - ext_call.return_data[32])
        else:
            return 0
    else:
        return 0
}

function sub_9500fefc(?) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor254)
    staticcall stor254.0xfa5e2abc with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool((2 * ceil32(return_data.size)) + 320 <= test266151307()):
        revert with 0, 65
    if not ext_call.return_data[32]:
        revert with 0, 'ERR__TOKEN_NOT_SUPPORTED'
    if address(ext_call.return_data[0]) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        revert with 0, 'ERR__WRONG_FUNCTION'
    call stor253 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'ERR__NATIVE_TRANSFER_FAILED'
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor252)
    staticcall stor252.0x4f558e79 with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR__TOKEN_DOES_NOT_EXIST'
    require ext_code.size(stor252)
    staticcall stor252.0x6352211e with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor101 != msg.sender:
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    else:
        if ext_call.return_data[12 len 20] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 == msg.value:
        revert with 0, 'ERR__AMOUNT_IS_0'
    require ext_code.size(stor255)
    if stor101 != msg.sender:
        call stor255.0x645625f3 with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), msg.value
    else:
        call stor255.0x645625f3 with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_0102c154[address(ext_call.return_data[0])]:
        if msg.value > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * msg.value < 10^18:
            revert with 0, 'ERR__AMOUNT_BELOW_MIN_LIQUIDITY'
        if sub_b3524e30[address(ext_call.return_data[0])] > !msg.value:
            revert with 0, 17
        sub_b3524e30[address(ext_call.return_data[0])] += msg.value
        if sub_0102c154[address(ext_call.return_data[0])] > !msg.value:
            revert with 0, 17
        sub_0102c154[address(ext_call.return_data[0])] += msg.value
        if sub_b0261e53[address(ext_call.return_data[0])] > !(10^18 * msg.value):
            revert with 0, 17
        sub_b0261e53[address(ext_call.return_data[0])] += 10^18 * msg.value
        if ext_call.return_data[32] > !msg.value:
            revert with 0, 17
        if ext_call.return_data[64] > !(10^18 * msg.value):
            revert with 0, 17
        require ext_code.size(stor252)
        call stor252.0x4810f4ae with:
             gas gas_remaining wei
            args cd[4], address(ext_call.return_data[0]), ext_call.return_data[32] + msg.value, ext_call.return_data[64] + (10^18 * msg.value)
    else:
        if msg.value and sub_b0261e53[address(ext_call.return_data[0])] > -1 / msg.value:
            revert with 0, 17
        if not sub_0102c154[address(ext_call.return_data[0])]:
            revert with 0, 18
        if msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] < 10^18:
            revert with 0, 'ERR__AMOUNT_BELOW_MIN_LIQUIDITY'
        if sub_b3524e30[address(ext_call.return_data[0])] > !msg.value:
            revert with 0, 17
        sub_b3524e30[address(ext_call.return_data[0])] += msg.value
        if sub_0102c154[address(ext_call.return_data[0])] > !msg.value:
            revert with 0, 17
        sub_0102c154[address(ext_call.return_data[0])] += msg.value
        if sub_b0261e53[address(ext_call.return_data[0])] > !(msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
            revert with 0, 17
        sub_b0261e53[address(ext_call.return_data[0])] += msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]
        if ext_call.return_data[32] > !msg.value:
            revert with 0, 17
        if ext_call.return_data[64] > !(msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
            revert with 0, 17
        require ext_code.size(stor252)
        call stor252.0x4810f4ae with:
             gas gas_remaining wei
            args cd[4], address(ext_call.return_data[0]), ext_call.return_data[32] + msg.value, ext_call.return_data[64] + (msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ca2ba943[address(ext_call.return_data[0])] > !msg.value:
        revert with 0, 17
    sub_ca2ba943[address(ext_call.return_data[0])] += msg.value
    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
    if stor101 != msg.sender:
        emit LiquidityAdded(address(ext_call.return_data[0]), msg.value, msg.sender);
    else:
        emit LiquidityAdded(address(ext_call.return_data[0]), msg.value, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    stor1 = 1
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        stor101 = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor101 = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor101 = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor101 = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor101 = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        stor101 = arg1
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
    if stor101 != msg.sender:
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        uint64(stor151.field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, stor151.field_64) = 0
        emit OwnershipTransferred(owner, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg4:
        revert with 0, 'Pauser Address cannot be 0'
    if uint8(stor0.field_8):
        paused = 0
        stor251 = arg4
        stor1 = 1
        stor252 = arg2
        stor254 = arg3
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
            stor251 = arg4
            stor1 = 1
            stor252 = arg2
            stor254 = arg3
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                paused = 0
                stor251 = arg4
                stor1 = 1
                stor252 = arg2
                stor254 = arg3
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    paused = 0
                    stor251 = arg4
                    stor1 = 1
                    stor252 = arg2
                    stor254 = arg3
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    paused = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    stor251 = arg4
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor1 = 1
                        stor252 = arg2
                        stor254 = arg3
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor1 = 1
                            stor252 = arg2
                            stor254 = arg3
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            stor1 = 1
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            stor252 = arg2
                            stor254 = arg3
                            uint8(stor0.field_8) = 0
}

function addNativeLiquidity() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor254)
    staticcall stor254.0xfa5e2abc with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    if not ext_call.return_data[32]:
        revert with 0, 'Token not supported'
    if paused:
        revert with 0, 'Pausable: paused'
    call stor253 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'ERR__NATIVE_TRANSFER_FAILED'
    if msg.value <= 0:
        revert with 0, 'ERR__AMOUNT_IS_0'
    require ext_code.size(stor252)
    if stor101 != msg.sender:
        call stor252.0x6a627842 with:
             gas gas_remaining wei
            args msg.sender
    else:
        call stor252.0x6a627842 with:
             gas gas_remaining wei
            args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor252)
    call stor252.0x4810f4ae with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor252)
    staticcall stor252.0x4f558e79 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR__TOKEN_DOES_NOT_EXIST'
    require ext_code.size(stor252)
    staticcall stor252.0x6352211e with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor101 != msg.sender:
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    else:
        if ext_call.return_data[12 len 20] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 == msg.value:
        revert with 0, 'ERR__AMOUNT_IS_0'
    require ext_code.size(stor255)
    if stor101 != msg.sender:
        call stor255.0x645625f3 with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), msg.value
    else:
        call stor255.0x645625f3 with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_0102c154[address(ext_call.return_data[0])]:
        if msg.value > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * msg.value < 10^18:
            revert with 0, 'ERR__AMOUNT_BELOW_MIN_LIQUIDITY'
        if sub_b3524e30[address(ext_call.return_data[0])] > !msg.value:
            revert with 0, 17
        sub_b3524e30[address(ext_call.return_data[0])] += msg.value
        if sub_0102c154[address(ext_call.return_data[0])] > !msg.value:
            revert with 0, 17
        sub_0102c154[address(ext_call.return_data[0])] += msg.value
        if sub_b0261e53[address(ext_call.return_data[0])] > !(10^18 * msg.value):
            revert with 0, 17
        sub_b0261e53[address(ext_call.return_data[0])] += 10^18 * msg.value
        if ext_call.return_data[32] > !msg.value:
            revert with 0, 17
        if ext_call.return_data[64] > !(10^18 * msg.value):
            revert with 0, 17
        require ext_code.size(stor252)
        call stor252.0x4810f4ae with:
             gas gas_remaining wei
            args ext_call.return_data[0], address(ext_call.return_data[0]), ext_call.return_data[32] + msg.value, ext_call.return_data[64] + (10^18 * msg.value)
    else:
        if msg.value and sub_b0261e53[address(ext_call.return_data[0])] > -1 / msg.value:
            revert with 0, 17
        if not sub_0102c154[address(ext_call.return_data[0])]:
            revert with 0, 18
        if msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] < 10^18:
            revert with 0, 'ERR__AMOUNT_BELOW_MIN_LIQUIDITY'
        if sub_b3524e30[address(ext_call.return_data[0])] > !msg.value:
            revert with 0, 17
        sub_b3524e30[address(ext_call.return_data[0])] += msg.value
        if sub_0102c154[address(ext_call.return_data[0])] > !msg.value:
            revert with 0, 17
        sub_0102c154[address(ext_call.return_data[0])] += msg.value
        if sub_b0261e53[address(ext_call.return_data[0])] > !(msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
            revert with 0, 17
        sub_b0261e53[address(ext_call.return_data[0])] += msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]
        if ext_call.return_data[32] > !msg.value:
            revert with 0, 17
        if ext_call.return_data[64] > !(msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
            revert with 0, 17
        require ext_code.size(stor252)
        call stor252.0x4810f4ae with:
             gas gas_remaining wei
            args ext_call.return_data[0], address(ext_call.return_data[0]), ext_call.return_data[32] + msg.value, ext_call.return_data[64] + (msg.value * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ca2ba943[address(ext_call.return_data[0])] > !msg.value:
        revert with 0, 17
    sub_ca2ba943[address(ext_call.return_data[0])] += msg.value
    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
    if stor101 != msg.sender:
        emit LiquidityAdded(address(ext_call.return_data[0]), msg.value, msg.sender);
    else:
        emit LiquidityAdded(address(ext_call.return_data[0]), msg.value, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    stor1 = 1
}

function sub_39db7d0e(?) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args cd[4]
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor254)
    staticcall stor254.0xfa5e2abc with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[64]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[96]
    require return_data.size - 128 >= 64
    if not bool((2 * ceil32(return_data.size)) + 320 <= test266151307()):
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[128]
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[160]
    mem[(2 * ceil32(return_data.size)) + 224] = (2 * ceil32(return_data.size)) + 256
    if not ext_call.return_data[32]:
        revert with 0, 'ERR__TOKEN_NOT_SUPPORTED'
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
        revert with 0, 'ERR__WRONG_FUNCTION'
    if stor101 != msg.sender:
        mem[(2 * ceil32(return_data.size)) + 324] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 356] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
    else:
        mem[(2 * ceil32(return_data.size)) + 324] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        mem[(2 * ceil32(return_data.size)) + 356] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args Mask(64, 96, cd[(calldata.size - 20)]) << 96, this.address
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[36]:
        revert with 0, 'ERR__INSUFFICIENT_ALLOWANCE'
    if stor101 != msg.sender:
        mem[(4 * ceil32(return_data.size)) + 356] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 388] = stor253
        mem[(4 * ceil32(return_data.size)) + 420] = cd[36]
        mem[(4 * ceil32(return_data.size)) + 320] = 100
        mem[(4 * ceil32(return_data.size)) + 356 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 352 len 4] = unknown_0x23b872dd(?????)
        mem[(4 * ceil32(return_data.size)) + 452] = 32
        mem[(4 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 516 len 128] = unknown_0x23b872dd(?????), msg.sender, stor253, cd[36], 0
        mem[(4 * ceil32(return_data.size)) + 616] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, stor253, cd[36], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, stor253, cd[36], 0) << 544)
    else:
        mem[(4 * ceil32(return_data.size)) + 356] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        mem[(4 * ceil32(return_data.size)) + 388] = stor253
        mem[(4 * ceil32(return_data.size)) + 420] = cd[36]
        mem[(4 * ceil32(return_data.size)) + 320] = 100
        mem[(4 * ceil32(return_data.size)) + 356 len 28] = Mask(64, 96, cd[(calldata.size - 20)]) << 64
        mem[(4 * ceil32(return_data.size)) + 352 len 4] = unknown_0x23b872dd(?????)
        mem[(4 * ceil32(return_data.size)) + 452] = 32
        mem[(4 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 516 len 128] = unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, stor253, cd[36], 0
        mem[(4 * ceil32(return_data.size)) + 616] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, stor253, cd[36], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(64, 96, cd[(calldata.size - 20)]) << 64, 0, stor253, cd[36], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 548] == bool(mem[(4 * ceil32(return_data.size)) + 548])
            if not mem[(4 * ceil32(return_data.size)) + 548]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor252)
    staticcall stor252.0x4f558e79 with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR__TOKEN_DOES_NOT_EXIST'
    require ext_code.size(stor252)
    staticcall stor252.0x6352211e with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor101 != msg.sender:
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    else:
        if ext_call.return_data[12 len 20] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 == cd[36]:
        revert with 0, 'ERR__AMOUNT_IS_0'
    require ext_code.size(stor255)
    if stor101 != msg.sender:
        call stor255.0x645625f3 with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), cd[36]
    else:
        call stor255.0x645625f3 with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), cd[36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_0102c154[address(ext_call.return_data[0])]:
        if cd[36] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * cd[36] < 10^18:
            revert with 0, 'ERR__AMOUNT_BELOW_MIN_LIQUIDITY'
        if sub_b3524e30[address(ext_call.return_data[0])] > !cd[36]:
            revert with 0, 17
        sub_b3524e30[address(ext_call.return_data[0])] += cd[36]
        if sub_0102c154[address(ext_call.return_data[0])] > !cd[36]:
            revert with 0, 17
        sub_0102c154[address(ext_call.return_data[0])] += cd[36]
        if sub_b0261e53[address(ext_call.return_data[0])] > !(10^18 * cd[36]):
            revert with 0, 17
        sub_b0261e53[address(ext_call.return_data[0])] += 10^18 * cd[36]
        if ext_call.return_data[32] > !cd[36]:
            revert with 0, 17
        if ext_call.return_data[64] > !(10^18 * cd[36]):
            revert with 0, 17
        require ext_code.size(stor252)
        call stor252.0x4810f4ae with:
             gas gas_remaining wei
            args cd[4], address(ext_call.return_data[0]), ext_call.return_data[32] + cd[36], ext_call.return_data[64] + (10^18 * cd[36])
    else:
        if cd[36] and sub_b0261e53[address(ext_call.return_data[0])] > -1 / cd[36]:
            revert with 0, 17
        if not sub_0102c154[address(ext_call.return_data[0])]:
            revert with 0, 18
        if cd[36] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] < 10^18:
            revert with 0, 'ERR__AMOUNT_BELOW_MIN_LIQUIDITY'
        if sub_b3524e30[address(ext_call.return_data[0])] > !cd[36]:
            revert with 0, 17
        sub_b3524e30[address(ext_call.return_data[0])] += cd[36]
        if sub_0102c154[address(ext_call.return_data[0])] > !cd[36]:
            revert with 0, 17
        sub_0102c154[address(ext_call.return_data[0])] += cd[36]
        if sub_b0261e53[address(ext_call.return_data[0])] > !(cd[36] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
            revert with 0, 17
        sub_b0261e53[address(ext_call.return_data[0])] += cd[36] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]
        if ext_call.return_data[32] > !cd[36]:
            revert with 0, 17
        if ext_call.return_data[64] > !(cd[36] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
            revert with 0, 17
        require ext_code.size(stor252)
        call stor252.0x4810f4ae with:
             gas gas_remaining wei
            args cd[4], address(ext_call.return_data[0]), ext_call.return_data[32] + cd[36], ext_call.return_data[64] + (cd[36] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ca2ba943[address(ext_call.return_data[0])] > !cd[36]:
        revert with 0, 17
    sub_ca2ba943[address(ext_call.return_data[0])] += cd[36]
    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
    if stor101 != msg.sender:
        emit LiquidityAdded(address(ext_call.return_data[0]), cd[36], msg.sender);
    else:
        emit LiquidityAdded(address(ext_call.return_data[0]), cd[36], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    stor1 = 1
}

function claimFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor252)
    staticcall stor252.0x4f558e79 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR__TOKEN_DOES_NOT_EXIST'
    require ext_code.size(stor252)
    staticcall stor252.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor101 != msg.sender:
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    else:
        if ext_call.return_data[12 len 20] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor254)
    staticcall stor254.0xfa5e2abc with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool((7 * ceil32(return_data.size)) + 256 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool((7 * ceil32(return_data.size)) + 320 <= test266151307()):
        revert with 0, 65
    if not ext_call.return_data[32]:
        revert with 0, 'ERR__TOKEN_NOT_SUPPORTED'
    if not sub_b0261e53[address(ext_call.return_data[0])]:
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[64] and sub_0102c154[address(ext_call.return_data[0])] > -1 / ext_call.return_data[64]:
            revert with 0, 17
        if not sub_b0261e53[address(ext_call.return_data[0])]:
            revert with 0, 18
        if ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[32]:
            revert with 0, 17
        if (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32] <= 0:
            revert with 0, 'ERR__NO_REWARDS_TO_CLAIM'
        if ext_call.return_data[64] < 10^18 * ext_call.return_data[32]:
            revert with 0, 17
        if sub_0102c154[address(ext_call.return_data[0])] < (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
            revert with 0, 17
        sub_0102c154[address(ext_call.return_data[0])] = sub_0102c154[address(ext_call.return_data[0])] - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
        if sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[64] - (10^18 * ext_call.return_data[32]):
            revert with 0, 17
        sub_b0261e53[address(ext_call.return_data[0])] = sub_b0261e53[address(ext_call.return_data[0])] - ext_call.return_data[64] + (10^18 * ext_call.return_data[32])
        if sub_d1b4f192[address(ext_call.return_data[0])] < (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
            revert with 0, 17
        sub_d1b4f192[address(ext_call.return_data[0])] = sub_d1b4f192[address(ext_call.return_data[0])] - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
        require ext_code.size(stor252)
        staticcall stor252.0x6914db60 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[64] < ext_call.return_data[64] - (10^18 * ext_call.return_data[32]):
            revert with 0, 17
        if ext_call.return_data[32] < 0:
            revert with 0, 17
        require ext_code.size(stor252)
        call stor252.0x4810f4ae with:
             gas gas_remaining wei
            args arg1, address(ext_call.return_data[0]), ext_call.return_data[32], 10^18 * ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor253)
        if stor101 != msg.sender:
            call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), msg.sender, (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]
        else:
            call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), Mask(64, 96, cd[(calldata.size - 20)]) << 96, (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor101 != msg.sender:
            emit 0x8e7bf3ba: (ext_call.return_data[64] - (10^18 * ext_call.return_data[32])), address(ext_call.return_data[0]), (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32], msg.sender
        else:
            emit 0x8e7bf3ba: (ext_call.return_data[64] - (10^18 * ext_call.return_data[32])), address(ext_call.return_data[0]), (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
    else:
        if not sub_0102c154[address(ext_call.return_data[0])]:
            revert with 0, 18
        if ext_call.return_data[32] and sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[64] and sub_0102c154[address(ext_call.return_data[0])] > -1 / ext_call.return_data[64]:
            revert with 0, 17
        if not sub_b0261e53[address(ext_call.return_data[0])]:
            revert with 0, 18
        if ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[32]:
            revert with 0, 17
        if (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32] <= 0:
            revert with 0, 'ERR__NO_REWARDS_TO_CLAIM'
        if ext_call.return_data[64] < ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]:
            revert with 0, 17
        if sub_0102c154[address(ext_call.return_data[0])] < (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
            revert with 0, 17
        sub_0102c154[address(ext_call.return_data[0])] = sub_0102c154[address(ext_call.return_data[0])] - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
        if sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[64] - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
            revert with 0, 17
        sub_b0261e53[address(ext_call.return_data[0])] = sub_b0261e53[address(ext_call.return_data[0])] - ext_call.return_data[64] + (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])
        if sub_d1b4f192[address(ext_call.return_data[0])] < (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
            revert with 0, 17
        sub_d1b4f192[address(ext_call.return_data[0])] = sub_d1b4f192[address(ext_call.return_data[0])] - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
        require ext_code.size(stor252)
        staticcall stor252.0x6914db60 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[64] < ext_call.return_data[64] - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
            revert with 0, 17
        if ext_call.return_data[32] < 0:
            revert with 0, 17
        require ext_code.size(stor252)
        call stor252.0x4810f4ae with:
             gas gas_remaining wei
            args arg1, address(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor253)
        if stor101 != msg.sender:
            call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), msg.sender, (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]
        else:
            call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), Mask(64, 96, cd[(calldata.size - 20)]) << 96, (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor101 != msg.sender:
            emit 0x8e7bf3ba: (ext_call.return_data[64] - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])), address(ext_call.return_data[0]), (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32], msg.sender
        else:
            emit 0x8e7bf3ba: (ext_call.return_data[64] - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])), address(ext_call.return_data[0]), (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
    stor1 = 1
}

function removeLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor252)
    staticcall stor252.0x4f558e79 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ERR__TOKEN_DOES_NOT_EXIST'
    require ext_code.size(stor252)
    staticcall stor252.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor101 != msg.sender:
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    else:
        if ext_call.return_data[12 len 20] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ERR__TRANSACTOR_DOES_NOT_OWN_NFT'
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(stor252)
    staticcall stor252.0x6914db60 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor254)
    staticcall stor254.0xfa5e2abc with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool((7 * ceil32(return_data.size)) + 256 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool((7 * ceil32(return_data.size)) + 320 <= test266151307()):
        revert with 0, 65
    if not ext_call.return_data[32]:
        revert with 0, 'ERR__TOKEN_NOT_SUPPORTED'
    if not arg2:
        revert with 0, 'ERR__INVALID_AMOUNT'
    if ext_call.return_data[32] < arg2:
        revert with 0, 'ERR__INSUFFICIENT_LIQUIDITY'
    require ext_code.size(stor255)
    if stor101 != msg.sender:
        call stor255.0xe23fec91 with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), arg2
    else:
        call stor255.0xe23fec91 with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_b0261e53[address(ext_call.return_data[0])]:
        if arg2 and 10^18 > -1 / arg2:
            revert with 0, 17
        if ext_call.return_data[64] and sub_0102c154[address(ext_call.return_data[0])] > -1 / ext_call.return_data[64]:
            revert with 0, 17
        if not sub_b0261e53[address(ext_call.return_data[0])]:
            revert with 0, 18
        if ext_call.return_data[32] > ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]:
            if sub_b0261e53[address(ext_call.return_data[0])]:
                if not sub_0102c154[address(ext_call.return_data[0])]:
                    revert with 0, 18
                if False and sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] > 0:
                    revert with 0, 17
            if sub_d1b4f192[address(ext_call.return_data[0])] < 0:
                revert with 0, 17
            if arg2 > -1:
                revert with 0, 17
            if 10^18 * arg2 > -1:
                revert with 0, 17
            if ext_call.return_data[64] < 10^18 * arg2:
                revert with 0, 17
            if sub_0102c154[address(ext_call.return_data[0])] < arg2:
                revert with 0, 17
            sub_0102c154[address(ext_call.return_data[0])] -= arg2
            if sub_b3524e30[address(ext_call.return_data[0])] < arg2:
                revert with 0, 17
            sub_b3524e30[address(ext_call.return_data[0])] -= arg2
            if ext_call.return_data[64] - (10^18 * arg2) >= 10^18:
                if sub_b0261e53[address(ext_call.return_data[0])] < 10^18 * arg2:
                    revert with 0, 17
                sub_b0261e53[address(ext_call.return_data[0])] += -1 * 10^18 * arg2
                if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                    revert with 0, 17
                sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                require ext_code.size(stor252)
                staticcall stor252.0x6914db60 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[64] < 10^18 * arg2:
                    revert with 0, 17
                if ext_call.return_data[32] < arg2:
                    revert with 0, 17
                require ext_code.size(stor252)
                call stor252.0x4810f4ae with:
                     gas gas_remaining wei
                    args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, ext_call.return_data[64] - (10^18 * arg2)
            else:
                if sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[64]:
                    revert with 0, 17
                sub_b0261e53[address(ext_call.return_data[0])] -= ext_call.return_data[64]
                if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                    revert with 0, 17
                sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                require ext_code.size(stor252)
                staticcall stor252.0x6914db60 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[64] < ext_call.return_data[64]:
                    revert with 0, 17
                if ext_call.return_data[32] < arg2:
                    revert with 0, 17
                require ext_code.size(stor252)
                call stor252.0x4810f4ae with:
                     gas gas_remaining wei
                    args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor253)
            if stor101 != msg.sender:
                call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, arg2
            else:
                call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), Mask(64, 96, cd[(calldata.size - 20)]) << 96, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor101 != msg.sender:
                emit LiquidityRemoved(address(ext_call.return_data[0]), arg2, msg.sender);
            else:
                emit LiquidityRemoved(address(ext_call.return_data[0]), arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        else:
            if not sub_b0261e53[address(ext_call.return_data[0])]:
                if (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32] and 10^18 > -1 / (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                if sub_d1b4f192[address(ext_call.return_data[0])] < (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                sub_d1b4f192[address(ext_call.return_data[0])] = sub_d1b4f192[address(ext_call.return_data[0])] - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
                if arg2 > !((ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]):
                    revert with 0, 17
                if 10^18 * arg2 > !((10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32])):
                    revert with 0, 17
                if ext_call.return_data[64] < (10^18 * arg2) + (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32]):
                    revert with 0, 17
                if sub_0102c154[address(ext_call.return_data[0])] < arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                sub_0102c154[address(ext_call.return_data[0])] = sub_0102c154[address(ext_call.return_data[0])] - arg2 - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
                if sub_b3524e30[address(ext_call.return_data[0])] < arg2:
                    revert with 0, 17
                sub_b3524e30[address(ext_call.return_data[0])] -= arg2
                if ext_call.return_data[64] - (10^18 * arg2) - (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + (10^18 * ext_call.return_data[32]) >= 10^18:
                    if sub_b0261e53[address(ext_call.return_data[0])] < (10^18 * arg2) + (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32]):
                        revert with 0, 17
                    sub_b0261e53[address(ext_call.return_data[0])] = sub_b0261e53[address(ext_call.return_data[0])] - (10^18 * arg2) - (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + (10^18 * ext_call.return_data[32])
                    if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                        revert with 0, 17
                    sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                    require ext_code.size(stor252)
                    staticcall stor252.0x6914db60 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[64] < (10^18 * arg2) + (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32]):
                        revert with 0, 17
                    if ext_call.return_data[32] < arg2:
                        revert with 0, 17
                    require ext_code.size(stor252)
                    call stor252.0x4810f4ae with:
                         gas gas_remaining wei
                        args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, ext_call.return_data[64] - (10^18 * arg2) - (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + (10^18 * ext_call.return_data[32])
                else:
                    if sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[64]:
                        revert with 0, 17
                    sub_b0261e53[address(ext_call.return_data[0])] -= ext_call.return_data[64]
                    if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                        revert with 0, 17
                    sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                    require ext_code.size(stor252)
                    staticcall stor252.0x6914db60 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[64] < ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[32] < arg2:
                        revert with 0, 17
                    require ext_code.size(stor252)
                    call stor252.0x4810f4ae with:
                         gas gas_remaining wei
                        args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, 0
            else:
                if not sub_0102c154[address(ext_call.return_data[0])]:
                    revert with 0, 18
                if (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32] and sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                if sub_d1b4f192[address(ext_call.return_data[0])] < (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                sub_d1b4f192[address(ext_call.return_data[0])] = sub_d1b4f192[address(ext_call.return_data[0])] - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
                if arg2 > !((ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]):
                    revert with 0, 17
                if 10^18 * arg2 > !((ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if ext_call.return_data[64] < (10^18 * arg2) + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if sub_0102c154[address(ext_call.return_data[0])] < arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                sub_0102c154[address(ext_call.return_data[0])] = sub_0102c154[address(ext_call.return_data[0])] - arg2 - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
                if sub_b3524e30[address(ext_call.return_data[0])] < arg2:
                    revert with 0, 17
                sub_b3524e30[address(ext_call.return_data[0])] -= arg2
                if ext_call.return_data[64] - (10^18 * arg2) - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) >= 10^18:
                    if sub_b0261e53[address(ext_call.return_data[0])] < (10^18 * arg2) + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    sub_b0261e53[address(ext_call.return_data[0])] = sub_b0261e53[address(ext_call.return_data[0])] - (10^18 * arg2) - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])
                    if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                        revert with 0, 17
                    sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                    require ext_code.size(stor252)
                    staticcall stor252.0x6914db60 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[64] < (10^18 * arg2) + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if ext_call.return_data[32] < arg2:
                        revert with 0, 17
                    require ext_code.size(stor252)
                    call stor252.0x4810f4ae with:
                         gas gas_remaining wei
                        args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, ext_call.return_data[64] - (10^18 * arg2) - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])
                else:
                    if sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[64]:
                        revert with 0, 17
                    sub_b0261e53[address(ext_call.return_data[0])] -= ext_call.return_data[64]
                    if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                        revert with 0, 17
                    sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                    require ext_code.size(stor252)
                    staticcall stor252.0x6914db60 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[64] < ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[32] < arg2:
                        revert with 0, 17
                    require ext_code.size(stor252)
                    call stor252.0x4810f4ae with:
                         gas gas_remaining wei
                        args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor253)
            if stor101 != msg.sender:
                call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]
            else:
                call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), Mask(64, 96, cd[(calldata.size - 20)]) << 96, arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor101 != msg.sender:
                emit LiquidityRemoved(address(ext_call.return_data[0]), arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32], msg.sender);
            else:
                emit LiquidityRemoved(address(ext_call.return_data[0]), arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    else:
        if not sub_0102c154[address(ext_call.return_data[0])]:
            revert with 0, 18
        if arg2 and sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] > -1 / arg2:
            revert with 0, 17
        if ext_call.return_data[64] and sub_0102c154[address(ext_call.return_data[0])] > -1 / ext_call.return_data[64]:
            revert with 0, 17
        if not sub_b0261e53[address(ext_call.return_data[0])]:
            revert with 0, 18
        if ext_call.return_data[32] > ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]:
            if sub_b0261e53[address(ext_call.return_data[0])]:
                if not sub_0102c154[address(ext_call.return_data[0])]:
                    revert with 0, 18
                if False and sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] > 0:
                    revert with 0, 17
            if sub_d1b4f192[address(ext_call.return_data[0])] < 0:
                revert with 0, 17
            if arg2 > -1:
                revert with 0, 17
            if arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] > -1:
                revert with 0, 17
            if ext_call.return_data[64] < arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]:
                revert with 0, 17
            if sub_0102c154[address(ext_call.return_data[0])] < arg2:
                revert with 0, 17
            sub_0102c154[address(ext_call.return_data[0])] -= arg2
            if sub_b3524e30[address(ext_call.return_data[0])] < arg2:
                revert with 0, 17
            sub_b3524e30[address(ext_call.return_data[0])] -= arg2
            if ext_call.return_data[64] - (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) >= 10^18:
                if sub_b0261e53[address(ext_call.return_data[0])] < arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]:
                    revert with 0, 17
                sub_b0261e53[address(ext_call.return_data[0])] += -1 * arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]
                if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                    revert with 0, 17
                sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                require ext_code.size(stor252)
                staticcall stor252.0x6914db60 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[64] < arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]:
                    revert with 0, 17
                if ext_call.return_data[32] < arg2:
                    revert with 0, 17
                require ext_code.size(stor252)
                call stor252.0x4810f4ae with:
                     gas gas_remaining wei
                    args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, ext_call.return_data[64] - (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])
            else:
                if sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[64]:
                    revert with 0, 17
                sub_b0261e53[address(ext_call.return_data[0])] -= ext_call.return_data[64]
                if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                    revert with 0, 17
                sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                require ext_code.size(stor252)
                staticcall stor252.0x6914db60 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[64] < ext_call.return_data[64]:
                    revert with 0, 17
                if ext_call.return_data[32] < arg2:
                    revert with 0, 17
                require ext_code.size(stor252)
                call stor252.0x4810f4ae with:
                     gas gas_remaining wei
                    args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor253)
            if stor101 != msg.sender:
                call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, arg2
            else:
                call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), Mask(64, 96, cd[(calldata.size - 20)]) << 96, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor101 != msg.sender:
                emit LiquidityRemoved(address(ext_call.return_data[0]), arg2, msg.sender);
            else:
                emit LiquidityRemoved(address(ext_call.return_data[0]), arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        else:
            if not sub_b0261e53[address(ext_call.return_data[0])]:
                if (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32] and 10^18 > -1 / (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                if sub_d1b4f192[address(ext_call.return_data[0])] < (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                sub_d1b4f192[address(ext_call.return_data[0])] = sub_d1b4f192[address(ext_call.return_data[0])] - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
                if arg2 > !((ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]):
                    revert with 0, 17
                if arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] > !((10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32])):
                    revert with 0, 17
                if ext_call.return_data[64] < (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32]):
                    revert with 0, 17
                if sub_0102c154[address(ext_call.return_data[0])] < arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                sub_0102c154[address(ext_call.return_data[0])] = sub_0102c154[address(ext_call.return_data[0])] - arg2 - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
                if sub_b3524e30[address(ext_call.return_data[0])] < arg2:
                    revert with 0, 17
                sub_b3524e30[address(ext_call.return_data[0])] -= arg2
                if ext_call.return_data[64] - (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + (10^18 * ext_call.return_data[32]) >= 10^18:
                    if sub_b0261e53[address(ext_call.return_data[0])] < (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32]):
                        revert with 0, 17
                    sub_b0261e53[address(ext_call.return_data[0])] = sub_b0261e53[address(ext_call.return_data[0])] - (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + (10^18 * ext_call.return_data[32])
                    if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                        revert with 0, 17
                    sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                    require ext_code.size(stor252)
                    staticcall stor252.0x6914db60 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[64] < (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[32]):
                        revert with 0, 17
                    if ext_call.return_data[32] < arg2:
                        revert with 0, 17
                    require ext_code.size(stor252)
                    call stor252.0x4810f4ae with:
                         gas gas_remaining wei
                        args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, ext_call.return_data[64] - (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (10^18 * ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + (10^18 * ext_call.return_data[32])
                else:
                    if sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[64]:
                        revert with 0, 17
                    sub_b0261e53[address(ext_call.return_data[0])] -= ext_call.return_data[64]
                    if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                        revert with 0, 17
                    sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                    require ext_code.size(stor252)
                    staticcall stor252.0x6914db60 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[64] < ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[32] < arg2:
                        revert with 0, 17
                    require ext_code.size(stor252)
                    call stor252.0x4810f4ae with:
                         gas gas_remaining wei
                        args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, 0
            else:
                if not sub_0102c154[address(ext_call.return_data[0])]:
                    revert with 0, 18
                if (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32] and sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] > -1 / (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                if sub_d1b4f192[address(ext_call.return_data[0])] < (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                sub_d1b4f192[address(ext_call.return_data[0])] = sub_d1b4f192[address(ext_call.return_data[0])] - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
                if arg2 > !((ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]):
                    revert with 0, 17
                if arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])] > !((ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])):
                    revert with 0, 17
                if ext_call.return_data[64] < (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
                    revert with 0, 17
                if sub_0102c154[address(ext_call.return_data[0])] < arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]:
                    revert with 0, 17
                sub_0102c154[address(ext_call.return_data[0])] = sub_0102c154[address(ext_call.return_data[0])] - arg2 - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) + ext_call.return_data[32]
                if sub_b3524e30[address(ext_call.return_data[0])] < arg2:
                    revert with 0, 17
                sub_b3524e30[address(ext_call.return_data[0])] -= arg2
                if ext_call.return_data[64] - (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) >= 10^18:
                    if sub_b0261e53[address(ext_call.return_data[0])] < (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    sub_b0261e53[address(ext_call.return_data[0])] = sub_b0261e53[address(ext_call.return_data[0])] - (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])
                    if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                        revert with 0, 17
                    sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                    require ext_code.size(stor252)
                    staticcall stor252.0x6914db60 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[64] < (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]):
                        revert with 0, 17
                    if ext_call.return_data[32] < arg2:
                        revert with 0, 17
                    require ext_code.size(stor252)
                    call stor252.0x4810f4ae with:
                         gas gas_remaining wei
                        args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, ext_call.return_data[64] - (arg2 * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) - (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])]) + (ext_call.return_data[32] * sub_b0261e53[address(ext_call.return_data[0])] / sub_0102c154[address(ext_call.return_data[0])])
                else:
                    if sub_b0261e53[address(ext_call.return_data[0])] < ext_call.return_data[64]:
                        revert with 0, 17
                    sub_b0261e53[address(ext_call.return_data[0])] -= ext_call.return_data[64]
                    if sub_ca2ba943[address(ext_call.return_data[0])] < arg2:
                        revert with 0, 17
                    sub_ca2ba943[address(ext_call.return_data[0])] -= arg2
                    emit 0xf2804403: address(ext_call.return_data[0]), sub_ca2ba943[address(ext_call.return_data[0])]
                    require ext_code.size(stor252)
                    staticcall stor252.0x6914db60 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[64] < ext_call.return_data[64]:
                        revert with 0, 17
                    if ext_call.return_data[32] < arg2:
                        revert with 0, 17
                    require ext_code.size(stor252)
                    call stor252.0x4810f4ae with:
                         gas gas_remaining wei
                        args arg1, address(ext_call.return_data[0]), ext_call.return_data[32] - arg2, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor253)
            if stor101 != msg.sender:
                call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]
            else:
                call stor253.transfer(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), Mask(64, 96, cd[(calldata.size - 20)]) << 96, arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor101 != msg.sender:
                emit LiquidityRemoved(address(ext_call.return_data[0]), arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32], msg.sender);
            else:
                emit LiquidityRemoved(address(ext_call.return_data[0]), arg2 + (ext_call.return_data[64] * sub_0102c154[address(ext_call.return_data[0])] / sub_b0261e53[address(ext_call.return_data[0])]) - ext_call.return_data[32], Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    stor1 = 1
}



}
