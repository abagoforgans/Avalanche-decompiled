contract main {




// =====================  Runtime code  =====================


const sub_00b7aebe(?) = 1

const sub_6faa7069(?) = 4

const sub_c244346d(?) = 2

const sub_ee034033(?) = 3

const sub_fc79789a(?) = 0


address owner;
uint256 ethMin;
uint256 sub_763b45ba;
uint256 ethMax;
uint256 sub_f7ee7068;
uint256 liquidityPercent;
uint256 sub_1e965288;
mapping of uint256 sub_f814ab28;
uint256 sub_f14ccc67;

function sub_1e965288(?) payable {
    return sub_1e965288
}

function ethMin() payable {
    return ethMin
}

function ethMax() payable {
    return ethMax
}

function sub_763b45ba(?) payable {
    return sub_763b45ba
}

function owner() payable {
    return owner
}

function liquidityPercent() payable {
    return liquidityPercent
}

function sub_f14ccc67(?) payable {
    return sub_f14ccc67
}

function sub_f7ee7068(?) payable {
    return sub_f7ee7068
}

function sub_f814ab28(?) payable {
    require calldata.size - 4 >= 32
    return sub_f814ab28[arg1]
}

function _fallback() payable {
    revert
}

function getFees() payable {
    return ethMin, sub_763b45ba, ethMax, sub_f7ee7068, liquidityPercent, sub_1e965288
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setEthMax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ethMax = arg1
    emit OnFeeChanged(ethMin, sub_763b45ba, ethMax, sub_f7ee7068, liquidityPercent, sub_1e965288);
}

function setEthMin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ethMin = arg1
    emit OnFeeChanged(ethMin, sub_763b45ba, ethMax, sub_f7ee7068, liquidityPercent, sub_1e965288);
}

function setTokenMax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f7ee7068 = arg1
    emit OnFeeChanged(ethMin, sub_763b45ba, ethMax, sub_f7ee7068, liquidityPercent, sub_1e965288);
}

function setTokenMin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_763b45ba = arg1
    emit OnFeeChanged(ethMin, sub_763b45ba, ethMax, sub_f7ee7068, liquidityPercent, sub_1e965288);
}

function setCrxLockAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1e965288 = arg1
    emit OnFeeChanged(ethMin, sub_763b45ba, ethMax, sub_f7ee7068, liquidityPercent, sub_1e965288);
}

function setReferralPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0, 'exceeds 100%'
    sub_f14ccc67 = arg1
    emit OnReferralPercentChanged(arg1);
}

function setLiquidityPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPercent = arg1
    emit OnFeeChanged(ethMin, sub_763b45ba, ethMax, sub_f7ee7068, liquidityPercent, sub_1e965288);
}

function setPartnerReferralPercent(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 10000:
        revert with 0, 'exceeds 100%'
    if not arg1:
        revert with 0, 'zero address'
    sub_f814ab28[address(arg1)] = arg2
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

function calculateIncreaseAmountFees(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if arg4 > 4:
        revert with 0, 'INVALID PAYMENT METHOD'
    if arg4 == 2:
        return ethMax, 0, 0, 0
    if arg4 == 3:
        return 0, sub_f7ee7068, 0, 0
    if arg4 == 4:
        return 0
    if not liquidityPercent:
        return 0
    require liquidityPercent
    if liquidityPercent * arg2 / liquidityPercent != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return 0, 0, liquidityPercent * arg2 / 10000, 0
}

function calculateFees(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if arg4 > 4:
        revert with 0, 'INVALID PAYMENT METHOD'
    if sub_f814ab28[address(arg5)] <= 0:
        if not arg4:
            if not liquidityPercent:
                return ethMin, 0, 0, 0, sub_f14ccc67
            require liquidityPercent
            if liquidityPercent * arg2 / liquidityPercent != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ethMin, 0, liquidityPercent * arg2 / 10000, 0, sub_f14ccc67
        if arg4 != 1:
            if arg4 == 2:
                return ethMax, 0, 0, 0, sub_f14ccc67
            if arg4 != 4:
                return 0, sub_f7ee7068, 0, 0, sub_f14ccc67
            return 0, 0, 0, sub_1e965288, sub_f14ccc67
        if not liquidityPercent:
            return 0, sub_763b45ba, 0, 0, sub_f14ccc67
        require liquidityPercent
        if liquidityPercent * arg2 / liquidityPercent != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return 0, sub_763b45ba, liquidityPercent * arg2 / 10000, 0, sub_f14ccc67
    if not arg4:
        if not liquidityPercent:
            return ethMin, 0, 0, 0, sub_f814ab28[address(arg5)]
        require liquidityPercent
        if liquidityPercent * arg2 / liquidityPercent != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ethMin, 0, liquidityPercent * arg2 / 10000, 0, sub_f814ab28[address(arg5)]
    if arg4 != 1:
        if arg4 == 2:
            return ethMax, 0, 0, 0, sub_f814ab28[address(arg5)]
        if arg4 != 4:
            return 0, sub_f7ee7068, 0, 0, sub_f814ab28[address(arg5)]
        return 0, 0, 0, sub_1e965288, sub_f814ab28[address(arg5)]
    if not liquidityPercent:
        return 0, sub_763b45ba, 0, 0, sub_f814ab28[address(arg5)]
    require liquidityPercent
    if liquidityPercent * arg2 / liquidityPercent != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return 0, sub_763b45ba, liquidityPercent * arg2 / 10000, 0, sub_f814ab28[address(arg5)]
}



}
