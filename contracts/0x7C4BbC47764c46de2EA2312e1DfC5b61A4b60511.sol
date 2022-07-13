contract main {




// =====================  Runtime code  =====================


const PRECISION = 10000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_9885fdfaAddress;
address sub_b8746e73Address;
address usdcAddress;
address redeemerAddress;
address sub_ae82459fAddress;
address dexRouterAddress;
address liquidityPairAddress;
address sub_57cb6dd4Address;
address rewardsPoolAddress;
address sub_45a7858fAddress;
uint256 treasuryFee;
uint256 rewardPoolFee;
uint256 sub_6caae832;
uint256 walletLimit;
uint256 sub_cfe19c66;
uint256 sub_278e5bba;
address sub_b91d850eAddress;
array of uint256 sub_298aaf41;
uint256 sub_c84eb624;
uint256 sub_4549a16e;
uint256 sub_6246dd27;
uint256 sub_420aeb76;
uint256 sub_2d6728cd;
array of uint256 stor82072082334744340899870651728446031260330293405975767531265497705226402987732;

function rewardsPool() payable {
    return rewardsPoolAddress
}

function dexRouter() payable {
    return dexRouterAddress
}

function sub_278e5bba(?) payable {
    return sub_278e5bba
}

function sub_298aaf41(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_298aaf41.length
    return sub_298aaf41[arg1]
}

function redeemer() payable {
    return redeemerAddress
}

function sub_2d6728cd(?) payable {
    return sub_2d6728cd
}

function walletLimit() payable {
    return walletLimit
}

function usdc() payable {
    return usdcAddress
}

function sub_420aeb76(?) payable {
    return sub_420aeb76
}

function sub_4549a16e(?) payable {
    return sub_4549a16e
}

function sub_45a7858f(?) payable {
    return sub_45a7858fAddress
}

function sub_57cb6dd4(?) payable {
    return sub_57cb6dd4Address
}

function sub_6246dd27(?) payable {
    return sub_6246dd27
}

function sub_6caae832(?) payable {
    return sub_6caae832
}

function liquidityPair() payable {
    return liquidityPairAddress
}

function owner() payable {
    return owner
}

function sub_9885fdfa(?) payable {
    return sub_9885fdfaAddress
}

function sub_ae82459f(?) payable {
    return sub_ae82459fAddress
}

function sub_b8746e73(?) payable {
    return sub_b8746e73Address
}

function sub_b91d850e(?) payable {
    return sub_b91d850eAddress
}

function rewardPoolFee() payable {
    return rewardPoolFee
}

function sub_c84eb624(?) payable {
    return sub_c84eb624
}

function treasuryFee() payable {
    return treasuryFee
}

function sub_cfe19c66(?) payable {
    return sub_cfe19c66
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_77037fcc(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_6246dd27 = arg1
}

function sub_98b7969a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_420aeb76 = arg1
}

function sub_a6b513b5(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_c84eb624 = arg1
}

function sub_ab20192c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_4549a16e = arg1
}

function sub_b75c13ba(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_278e5bba = arg1
}

function sub_ce0c2e45(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_cfe19c66 = arg1
}

function sub_e1f8d0f3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_2d6728cd = arg1
}

function setTxLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_6caae832 = arg1
}

function setTreasuryFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    treasuryFee = arg1
}

function setWalletLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    walletLimit = arg1
}

function setRewardPoolFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    rewardPoolFee = arg1
}

function setUSDC(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    usdcAddress = arg1
}

function setRedeemer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    redeemerAddress = arg1
}

function sub_c2e1e971(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_298aaf41.length++
    storB573[stor118.length] = arg1
}

function setRewardsPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    rewardsPoolAddress = arg1
}

function setRedeemPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_45a7858fAddress = arg1
}

function sub_6f784bf2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_9885fdfaAddress = address(arg1)
}

function sub_bc3a6aa8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_ae82459fAddress = address(arg1)
}

function sub_ea9f2629(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_b91d850eAddress = address(arg1)
}

function sub_f9ef5192(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_b8746e73Address = address(arg1)
}

function sub_fef8534b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_57cb6dd4Address = address(arg1)
}

function sub_2b9e3f2e(?) payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_298aaf41.length = 0
    idx = 0
    while sub_298aaf41.length > idx:
        sub_298aaf41[idx] = 0
        idx = idx + 1
        continue 
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_f05d0982(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 164).length) + 97 > test266151307() or ceil32(32 * ('cd', 164).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 164).length
    require calldata.size >= cd[164] + (32 * ('cd', 164).length) + 36
    s = cd[164] + 36
    t = 128
    idx = 0
    while idx < ('cd', 164).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getClassCount() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 164).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Class manager not configured!'
    if ('cd', 164).length != ext_call.return_data[0]:
        revert with 0, 'Class tax array length isnt right'
    sub_9885fdfaAddress = address(cd[4])
    sub_b8746e73Address = address(cd[36])
    usdcAddress = address(cd[68])
    sub_ae82459fAddress = address(cd[100])
    dexRouterAddress = address(cd[132])
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).factory() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = address(cd[36])
    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = address(cd[68])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(cd[36]), address(cd[68])
    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    liquidityPairAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_b8746e73Address)
    staticcall sub_b8746e73Address.0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        sub_cfe19c66 = 100
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            sub_cfe19c66 = 100 * 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            sub_cfe19c66 = 100 * s * t
    require ext_code.size(sub_9885fdfaAddress)
    staticcall sub_9885fdfaAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 164).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        sub_278e5bba = 90
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
                revert with 0, 17
            sub_278e5bba = 90 * 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if s * t > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
                revert with 0, 17
            sub_278e5bba = 90 * s * t
    sub_298aaf41.length = ('cd', 164).length
    if not ('cd', 164).length:
        idx = 0
        while sub_298aaf41.length > idx:
            sub_298aaf41[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 164).length) + 128 > idx:
            sub_298aaf41[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
        while sub_298aaf41.length > idx:
            sub_298aaf41[idx] = 0
            idx = idx + 1
            continue 
    treasuryFee = 7000
    rewardPoolFee = 3000
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
