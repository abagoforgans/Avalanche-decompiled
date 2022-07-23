contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - sub_b88a324b(?)
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
uint32 stor3;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
uint8 sub_9f8b5da1;
address gaspriceAddress; offset 8
address wantAddress;
address crvAddress;
address nativeAddress;
address depositTokenAddress;
address sub_0d52333cAddress;
uint32 stor15;
address sub_3930d6b6Address;
uint256 stor15;
uint32 stor16;
address poolAddress;
uint256 poolSize;
uint256 depositIndex;
uint8 sub_c6ddbeeb;
uint8 sub_b503ae00; offset 8
array of struct sub_71b359e1;
array of struct sub_fc167fc6;
uint8 sub_de5b8b22;
uint8 harvestOnDeposit; offset 168
uint32 stor22;
uint128 stor22; offset 168
address stor22;
address crvRouterAddress; offset 8
uint256 lastHarvest;

function sub_0d52333c(?) {
    return sub_0d52333cAddress
}

function native() {
    return nativeAddress
}

function pool() {
    return address(poolAddress)
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function unirouter() {
    return address(unirouterAddress)
}

function sub_3930d6b6(?) {
    return address(sub_3930d6b6Address)
}

function poolSize() {
    return poolSize
}

function paused() {
    return bool(stor0)
}

function crv() {
    return crvAddress
}

function gasprice() {
    return gaspriceAddress
}

function sub_71b359e1(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_71b359e1.length
    return sub_71b359e1[arg1].field_0
}

function depositIndex() {
    return depositIndex
}

function crvRouter() {
    return crvRouterAddress
}

function harvestOnDeposit() {
    return bool(harvestOnDeposit)
}

function withdrawalFee() {
    return withdrawalFee
}

function owner() {
    return owner
}

function beefyFeeRecipient() {
    return beefyFeeRecipientAddress
}

function callFee() {
    return callFee
}

function sub_9f8b5da1(?) {
    return bool(sub_9f8b5da1)
}

function keeper() {
    return keeperAddress
}

function sub_b503ae00(?) {
    return bool(sub_b503ae00)
}

function sub_c6ddbeeb(?) {
    return bool(sub_c6ddbeeb)
}

function depositToken() {
    return depositTokenAddress
}

function beefyFee() {
    return beefyFee
}

function sub_de5b8b22(?) {
    return bool(sub_de5b8b22)
}

function lastHarvest() {
    return lastHarvest
}

function vault() {
    return address(vaultAddress)
}

function sub_fc167fc6(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_fc167fc6.length
    return sub_fc167fc6[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setUnirouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(unirouterAddress) = arg1
}

function sub_5839b094(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    sub_de5b8b22 = uint8(arg1)
}

function setKeeper(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    beefyFeeRecipientAddress = arg1
}

function setShouldGasThrottle(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    sub_9f8b5da1 = uint8(arg1)
}

function setWithdrawalFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() {
    require ext_code.size(address(sub_3930d6b6Address))
    staticcall address(sub_3930d6b6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function rewardsAvailable() {
    require ext_code.size(address(sub_3930d6b6Address))
    staticcall address(sub_3930d6b6Address).claimable_reward(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, crvAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setHarvestOnDeposit(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    Mask(88, 0, stor22.field_168) = Mask(88, 0, arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not uint8(arg1) and True:
        withdrawalFee = 10
    else:
        withdrawalFee = 0
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

function deposit() {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(sub_3930d6b6Address))
        call address(sub_3930d6b6Address).deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() {
    require ext_code.size(address(sub_3930d6b6Address))
    staticcall address(sub_3930d6b6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function crvToNative() {
    if sub_71b359e1.length:
        mem[128] = address(sub_71b359e1.field_0)
        if (32 * sub_71b359e1.length) + 32 > 64:
            mem[160] = address(sub_71b359e1.field_256)
            idx = 160
            s = 1
            while (32 * sub_71b359e1.length) + 96 > idx:
                mem[idx + 32] = sub_71b359e1[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_71b359e1.length) + 128] = 32
    mem[(32 * sub_71b359e1.length) + 160] = sub_71b359e1.length
    mem[(32 * sub_71b359e1.length) + 192 len floor32(sub_71b359e1.length)] = mem[128 len floor32(sub_71b359e1.length)]
    return memory
      from (32 * sub_71b359e1.length) + 128
       len (96 * sub_71b359e1.length) + 64
}

function nativeToDeposit() {
    if not sub_fc167fc6.length:
        mem[(32 * sub_fc167fc6.length) + 128] = 32
        mem[(32 * sub_fc167fc6.length) + 160] = sub_fc167fc6.length
        mem[(32 * sub_fc167fc6.length) + 192 len floor32(sub_fc167fc6.length)] = mem[128 len floor32(sub_fc167fc6.length)]
        return memory
          from (32 * sub_fc167fc6.length) + 128
           len (96 * sub_fc167fc6.length) + 64
    mem[128] = address(sub_fc167fc6.field_0)
    idx = 128
    s = 0
    while (32 * sub_fc167fc6.length) + 96 > idx:
        mem[idx + 32] = sub_fc167fc6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_fc167fc6.length) + 192 len floor32(sub_fc167fc6.length)] = mem[128 len floor32(sub_fc167fc6.length)]
    return Array(len=sub_fc167fc6.length, data=mem[128 len floor32(sub_fc167fc6.length)], mem[(32 * sub_fc167fc6.length) + floor32(sub_fc167fc6.length) + 192 len (32 * sub_fc167fc6.length) - floor32(sub_fc167fc6.length)]), 
}

function retireStrat() {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(sub_3930d6b6Address))
    staticcall address(sub_3930d6b6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_3930d6b6Address))
    call address(sub_3930d6b6Address).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function callReward() {
    require ext_code.size(address(sub_3930d6b6Address))
    staticcall address(sub_3930d6b6Address).claimable_reward(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, crvAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 64
    mem[164] = sub_71b359e1.length
    if not sub_71b359e1.length:
        require ext_code.size(address(unirouterAddress))
        staticcall address(unirouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, sub_71b359e1.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _9 = mem[96 len 4], ext_call.return_data[0 len 28]
        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
        _12 = mem[_9 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_9 + 96])] = mem[_9 + 128 len floor32(mem[_9 + 96])]
        mem[64] = (32 * _12) + ceil32(return_data.size) + 128
        require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
        if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
            return 0
        if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _12) + ceil32(return_data.size) + 229 len 31]
        if not 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000:
            return 0
        if callFee * 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 / 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _12) + ceil32(return_data.size) + 229 len 31]
        mem[(32 * _12) + ceil32(return_data.size) + 128] = callFee * 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 / 1000
        return memory
          from (32 * _12) + ceil32(return_data.size) + 128
           len 32
    mem[0] = 20
    mem[196] = address(sub_71b359e1.field_0)
    idx = 196
    s = 0
    while (32 * sub_71b359e1.length) + 196 > idx + 32:
        mem[idx + 32] = sub_71b359e1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(unirouterAddress))
    staticcall address(unirouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=sub_71b359e1.length, data=mem[196 len 32 * sub_71b359e1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _43 = mem[96 len 4], ext_call.return_data[0 len 28]
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
    _46 = mem[_43 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_43 + 96])] = mem[_43 + 128 len floor32(mem[_43 + 96])]
    mem[64] = (32 * _46) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
        return 0
    if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != 45:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _46) + ceil32(return_data.size) + 229 len 31]
    if not 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000:
        return 0
    if callFee * 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 / 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 != callFee:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _46) + ceil32(return_data.size) + 229 len 31]
    mem[(32 * _46) + ceil32(return_data.size) + 128] = callFee * 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 / 1000
    return memory
      from (32 * _46) + ceil32(return_data.size) + 128
       len 32
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(sub_3930d6b6Address))
        call address(sub_3930d6b6Address).0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if ext_call.return_data[0] <= arg1:
        if tx.origin == owner:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if stor0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if not ext_call.return_data[0]:
                    if 0 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        Mask(224, 0, stor4),
                                        uint32(stor4),
                                        ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
    else:
        if tx.origin == owner:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            if stor0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if not arg1:
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if withdrawalFee * arg1 / arg1 != withdrawalFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if withdrawalFee * arg1 / 10000 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000)
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
}

function managerHarvest() {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if sub_0d52333cAddress:
        require ext_code.size(sub_0d52333cAddress)
        call sub_0d52333cAddress.mint(address arg1) with:
             gas gas_remaining wei
            args address(sub_3930d6b6Address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_3930d6b6Address))
    call address(sub_3930d6b6Address).claim_rewards(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(crvAddress)
    staticcall crvAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nativeAddress)
    staticcall nativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(nativeAddress)
        staticcall nativeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if nativeAddress == depositTokenAddress:
            require ext_code.size(nativeAddress)
            call nativeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(address(poolAddress))
                if not sub_c6ddbeeb:
                    call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                else:
                    call address(poolAddress).0xee22be23 with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolSize != 3:
                    if poolSize != 4:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 4
                        require ext_code.size(address(poolAddress))
                        if not sub_b503ae00:
                            call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        else:
                            call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require depositIndex < 3
                    require ext_code.size(address(poolAddress))
                    if sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                    else:
                        if not sub_b503ae00:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 96], 0
                        else:
                            call address(poolAddress).0xa3185179 with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size len 96], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = ext_call.return_data[0]
            mem[132] = 0
            mem[196] = this.address
            mem[228] = block.timestamp
            mem[164] = 160
            mem[260] = sub_fc167fc6.length
            if not sub_fc167fc6.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
            else:
                mem[0] = 21
                mem[292] = address(sub_fc167fc6.field_0)
                idx = 292
                s = 0
                while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_fc167fc6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(address(poolAddress))
                if not sub_c6ddbeeb:
                    call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                else:
                    call address(poolAddress).0xee22be23 with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolSize != 3:
                    if poolSize != 4:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 4
                        require ext_code.size(address(poolAddress))
                        if not sub_b503ae00:
                            call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        else:
                            call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require depositIndex < 3
                    require ext_code.size(address(poolAddress))
                    if sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                    else:
                        if not sub_b503ae00:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 96], 0
                        else:
                            call address(poolAddress).0xa3185179 with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size len 96], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if stor0:
            revert with 0, 'Pausable: paused'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(sub_3930d6b6Address))
            call address(sub_3930d6b6Address).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        lastHarvest = block.timestamp
        emit StratHarvest(msg.sender);
    else:
        if ext_call.return_data[0] > 0:
            require ext_code.size(nativeAddress)
            staticcall nativeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if nativeAddress == depositTokenAddress:
                require ext_code.size(nativeAddress)
                call nativeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    if not sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                    else:
                        call address(poolAddress).0xee22be23 with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolSize != 3:
                        if poolSize != 4:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            else:
                                call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        if sub_c6ddbeeb:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                        else:
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 96], 0
                            else:
                                call address(poolAddress).0xa3185179 with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = sub_fc167fc6.length
                if not sub_fc167fc6.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                else:
                    mem[0] = 21
                    mem[292] = address(sub_fc167fc6.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_fc167fc6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    if not sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                    else:
                        call address(poolAddress).0xee22be23 with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolSize != 3:
                        if poolSize != 4:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            else:
                                call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        if sub_c6ddbeeb:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                        else:
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 96], 0
                            else:
                                call address(poolAddress).0xa3185179 with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if stor0:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_3930d6b6Address))
                call address(sub_3930d6b6Address).deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            lastHarvest = block.timestamp
            emit StratHarvest(msg.sender);
}

function harvest() {
    if stor0:
        revert with 0, 'Pausable: paused'
    if sub_9f8b5da1:
        if ext_code.size(gaspriceAddress):
            require ext_code.size(gaspriceAddress)
            call gaspriceAddress.maxGasPrice() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.gasprice > ext_call.return_data[0]:
                revert with 0, 'gas is too high!'
    if sub_0d52333cAddress:
        require ext_code.size(sub_0d52333cAddress)
        call sub_0d52333cAddress.mint(address arg1) with:
             gas gas_remaining wei
            args address(sub_3930d6b6Address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_3930d6b6Address))
    call address(sub_3930d6b6Address).claim_rewards(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(crvAddress)
    staticcall crvAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nativeAddress)
    staticcall nativeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(nativeAddress)
        staticcall nativeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if nativeAddress == depositTokenAddress:
            require ext_code.size(nativeAddress)
            call nativeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(address(poolAddress))
                if not sub_c6ddbeeb:
                    call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                else:
                    call address(poolAddress).0xee22be23 with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolSize != 3:
                    if poolSize != 4:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 4
                        require ext_code.size(address(poolAddress))
                        if not sub_b503ae00:
                            call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        else:
                            call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require depositIndex < 3
                    require ext_code.size(address(poolAddress))
                    if sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                    else:
                        if not sub_b503ae00:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 96], 0
                        else:
                            call address(poolAddress).0xa3185179 with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size len 96], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = ext_call.return_data[0]
            mem[132] = 0
            mem[196] = this.address
            mem[228] = block.timestamp
            mem[164] = 160
            mem[260] = sub_fc167fc6.length
            if not sub_fc167fc6.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
            else:
                mem[0] = 21
                mem[292] = address(sub_fc167fc6.field_0)
                idx = 292
                s = 0
                while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_fc167fc6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(address(poolAddress))
                if not sub_c6ddbeeb:
                    call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0
                else:
                    call address(poolAddress).0xee22be23 with:
                         gas gas_remaining wei
                        args call.data[calldata.size len 64], 0, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolSize != 3:
                    if poolSize != 4:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(address(poolAddress))
                            call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 4
                        require ext_code.size(address(poolAddress))
                        if not sub_b503ae00:
                            call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        else:
                            call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require depositIndex < 3
                    require ext_code.size(address(poolAddress))
                    if sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                    else:
                        if not sub_b503ae00:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 96], 0
                        else:
                            call address(poolAddress).0xa3185179 with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size len 96], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if stor0:
            revert with 0, 'Pausable: paused'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(address(sub_3930d6b6Address))
            call address(sub_3930d6b6Address).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        lastHarvest = block.timestamp
        emit StratHarvest(msg.sender);
    else:
        if ext_call.return_data[0] > 0:
            require ext_code.size(nativeAddress)
            staticcall nativeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if nativeAddress == depositTokenAddress:
                require ext_code.size(nativeAddress)
                call nativeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    if not sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                    else:
                        call address(poolAddress).0xee22be23 with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolSize != 3:
                        if poolSize != 4:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            else:
                                call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        if sub_c6ddbeeb:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                        else:
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 96], 0
                            else:
                                call address(poolAddress).0xa3185179 with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = sub_fc167fc6.length
                if not sub_fc167fc6.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                else:
                    mem[0] = 21
                    mem[292] = address(sub_fc167fc6.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_fc167fc6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    if not sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                    else:
                        call address(poolAddress).0xee22be23 with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolSize != 3:
                        if poolSize != 4:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            else:
                                call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        if sub_c6ddbeeb:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                        else:
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 96], 0
                            else:
                                call address(poolAddress).0xa3185179 with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if stor0:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_3930d6b6Address))
                call address(sub_3930d6b6Address).deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            lastHarvest = block.timestamp
            emit StratHarvest(msg.sender);
}

function beforeDeposit() {
    if harvestOnDeposit:
        if address(vaultAddress) != msg.sender:
            revert with 0, '!vault'
        if sub_0d52333cAddress:
            require ext_code.size(sub_0d52333cAddress)
            call sub_0d52333cAddress.mint(address arg1) with:
                 gas gas_remaining wei
                args address(sub_3930d6b6Address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sub_3930d6b6Address))
        call address(sub_3930d6b6Address).claim_rewards(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(crvAddress)
        staticcall crvAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(nativeAddress)
        staticcall nativeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(nativeAddress)
            staticcall nativeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if nativeAddress == depositTokenAddress:
                require ext_code.size(nativeAddress)
                call nativeAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    if not sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                    else:
                        call address(poolAddress).0xee22be23 with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolSize != 3:
                        if poolSize != 4:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            else:
                                call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        if sub_c6ddbeeb:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                        else:
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 96], 0
                            else:
                                call address(poolAddress).0xa3185179 with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = sub_fc167fc6.length
                if not sub_fc167fc6.length:
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                else:
                    mem[0] = 21
                    mem[292] = address(sub_fc167fc6.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_fc167fc6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(address(unirouterAddress))
                    call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                require ext_code.size(depositTokenAddress)
                staticcall depositTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 == poolSize:
                    require depositIndex < 2
                    require ext_code.size(address(poolAddress))
                    if not sub_c6ddbeeb:
                        call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0
                    else:
                        call address(poolAddress).0xee22be23 with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 64], 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolSize != 3:
                        if poolSize != 4:
                            if 5 == poolSize:
                                require depositIndex < 5
                                require ext_code.size(address(poolAddress))
                                call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 160], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require depositIndex < 4
                            require ext_code.size(address(poolAddress))
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            else:
                                call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 3
                        require ext_code.size(address(poolAddress))
                        if sub_c6ddbeeb:
                            call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                        else:
                            if not sub_b503ae00:
                                call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size len 96], 0
                            else:
                                call address(poolAddress).0xa3185179 with:
                                     gas gas_remaining wei
                                    args wantAddress, call.data[calldata.size len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if stor0:
                revert with 0, 'Pausable: paused'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_3930d6b6Address))
                call address(sub_3930d6b6Address).deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            lastHarvest = block.timestamp
            emit StratHarvest(msg.sender);
        else:
            if ext_call.return_data[0] > 0:
                require ext_code.size(nativeAddress)
                staticcall nativeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if nativeAddress == depositTokenAddress:
                    require ext_code.size(nativeAddress)
                    call nativeAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 2 == poolSize:
                        require depositIndex < 2
                        require ext_code.size(address(poolAddress))
                        if not sub_c6ddbeeb:
                            call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                                args call.data[calldata.size len 64], 0
                        else:
                            call address(poolAddress).0xee22be23 with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 64], 0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if poolSize != 3:
                            if poolSize != 4:
                                if 5 == poolSize:
                                    require depositIndex < 5
                                    require ext_code.size(address(poolAddress))
                                    call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size len 160], 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require depositIndex < 4
                                require ext_code.size(address(poolAddress))
                                if not sub_b503ae00:
                                    call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                                else:
                                    call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require depositIndex < 3
                            require ext_code.size(address(poolAddress))
                            if sub_c6ddbeeb:
                                call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                            else:
                                if not sub_b503ae00:
                                    call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size len 96], 0
                                else:
                                    call address(poolAddress).0xa3185179 with:
                                         gas gas_remaining wei
                                        args wantAddress, call.data[calldata.size len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[100] = ext_call.return_data[0]
                    mem[132] = 0
                    mem[196] = this.address
                    mem[228] = block.timestamp
                    mem[164] = 160
                    mem[260] = sub_fc167fc6.length
                    if not sub_fc167fc6.length:
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length
                    else:
                        mem[0] = 21
                        mem[292] = address(sub_fc167fc6.field_0)
                        idx = 292
                        s = 0
                        while (32 * sub_fc167fc6.length) + 292 > idx + 32:
                            mem[idx + 32] = sub_fc167fc6[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(address(unirouterAddress))
                        call address(unirouterAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_fc167fc6.length, mem[292 len 32 * sub_fc167fc6.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
                    require ext_code.size(depositTokenAddress)
                    staticcall depositTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 == poolSize:
                        require depositIndex < 2
                        require ext_code.size(address(poolAddress))
                        if not sub_c6ddbeeb:
                            call address(poolAddress).add_liquidity(uint256[2] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 64], 0
                        else:
                            call address(poolAddress).0xee22be23 with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 64], 0, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if poolSize != 3:
                            if poolSize != 4:
                                if 5 == poolSize:
                                    require depositIndex < 5
                                    require ext_code.size(address(poolAddress))
                                    call address(poolAddress).add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size len 160], 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require depositIndex < 4
                                require ext_code.size(address(poolAddress))
                                if not sub_b503ae00:
                                    call address(poolAddress).add_liquidity(uint256[4] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                                else:
                                    call address(poolAddress).add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require depositIndex < 3
                            require ext_code.size(address(poolAddress))
                            if sub_c6ddbeeb:
                                call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
                                     gas gas_remaining wei
                                    args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0, 1
                            else:
                                if not sub_b503ae00:
                                    call address(poolAddress).add_liquidity(uint256[3] arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args call.data[calldata.size len 96], 0
                                else:
                                    call address(poolAddress).0xa3185179 with:
                                         gas gas_remaining wei
                                        args wantAddress, call.data[calldata.size len 96], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if stor0:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(address(sub_3930d6b6Address))
                    call address(sub_3930d6b6Address).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                lastHarvest = block.timestamp
                emit StratHarvest(msg.sender);
}

function pause() {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(stor15)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0
        call nativeAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, address(stor22.field_0), 0
            call crvAddress with:
               funct uint32(stor22.field_0)
                 gas gas_remaining wei
                args 0, 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[858 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[752 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[688 len 28], mem[816 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                else:
                    mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[784]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, address(stor22.field_0), 0
            call crvAddress with:
               funct uint32(stor22.field_0)
                 gas gas_remaining wei
                args 0, 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 531 len 26]
    if not ext_code.size(nativeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
    call nativeAddress with:
       funct uint32(stor3)
         gas gas_remaining wei
        args 0, 0, mem[ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 535 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 695 len 26]
        if not ext_code.size(crvAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 589 len 64] = 0, address(stor22.field_0), 0
        call crvAddress with:
           funct uint32(stor22.field_0)
             gas gas_remaining wei
            args 0, 0, mem[ceil32(return_data.size) + 653 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 699 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 859 len 26]
            if not ext_code.size(depositTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 753 len 64] = 0, address(poolAddress), 0
            call depositTokenAddress with:
               funct uint32(stor16)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 863 len 22]
            else:
                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 785]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 621]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 860 len 26]
            if not ext_code.size(depositTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(poolAddress), 0
            call depositTokenAddress with:
               funct uint32(stor16)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    'SafeERC20: low-level call failed',
                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + 696 len 26]
    if not ext_code.size(crvAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(stor22.field_0), 0
    call crvAddress with:
       funct uint32(stor22.field_0)
         gas gas_remaining wei
        args 0, 0, mem[(2 * ceil32(return_data.size)) + 654 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 700 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(2 * ceil32(return_data.size)) + 860 len 26]
        if not ext_code.size(depositTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(poolAddress), 0
        call depositTokenAddress with:
           funct uint32(stor16)
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
        else:
            mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 786]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
    if not ext_code.size(depositTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, address(poolAddress), 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
    call depositTokenAddress with:
       funct uint32(stor16)
         gas gas_remaining wei
        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 760] = 32
        mem[(4 * ceil32(return_data.size)) + 792] = 32
        mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 756
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
    require return_data.size >= 32
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
    mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 760] = 32
    mem[(4 * ceil32(return_data.size)) + 792] = 42
    mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (4 * ceil32(return_data.size)) + 756
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function panic() {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        if owner != msg.sender:
            if keeperAddress != msg.sender:
                revert with 0, '!manager'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(stor15)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(unirouterAddress), 0
        call nativeAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[694 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, address(stor22.field_0), 0
            call crvAddress with:
               funct uint32(stor22.field_0)
                 gas gas_remaining wei
                args 0, 0, mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[858 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[752 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[688 len 28], mem[816 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                else:
                    mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[784]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, address(stor22.field_0), 0
            call crvAddress with:
               funct uint32(stor22.field_0)
                 gas gas_remaining wei
                args 0, 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, address(unirouterAddress), 0
        call nativeAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 695 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, address(stor22.field_0), 0
            call crvAddress with:
               funct uint32(stor22.field_0)
                 gas gas_remaining wei
                args 0, 0, mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 859 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 621]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 696 len 26]
            if not ext_code.size(crvAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, address(stor22.field_0), 0
            call crvAddress with:
               funct uint32(stor22.field_0)
                 gas gas_remaining wei
                args 0, 0, mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 860 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, address(poolAddress), 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 786]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 622]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 861 len 26]
                if not ext_code.size(depositTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, address(poolAddress), 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
                call depositTokenAddress with:
                   funct uint32(stor16)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor15):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 760] = 32
                        mem[(4 * ceil32(return_data.size)) + 792] = 32
                        mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 756
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 760] = 32
                            mem[(4 * ceil32(return_data.size)) + 792] = 42
                            mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 756
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    require ext_code.size(address(sub_3930d6b6Address))
    staticcall address(sub_3930d6b6Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_3930d6b6Address))
    call address(sub_3930d6b6Address).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
