contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const name = '', 0

const apiVersion = '', 0

const delegatedAssets = 0


array of uint256 metadataURI;
uint32 stor1;
address vaultAddress;
address strategistAddress;
address rewardsAddress;
address keeperAddress;
address wantAddress;
uint256 minReportDelay;
uint256 maxReportDelay;
uint256 profitFactor;
uint256 debtThreshold;
uint8 emergencyExit;
address stor10;
address gaugeAddress; offset 8
address poolAddress;
address sub_e956dcd7Address;
address stor13;
address stor14;
address stor15;
uint16 stor16;
uint16 stor16; offset 160
address stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
}

function pool() payable {
    return poolAddress
}

function debtThreshold() payable {
    return debtThreshold
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function maxReportDelay() payable {
    return maxReportDelay
}

function emergencyExit() payable {
    return bool(emergencyExit)
}

function profitFactor() payable {
    return profitFactor
}

function minReportDelay() payable {
    return minReportDelay
}

function rewards() payable {
    return rewardsAddress
}

function gauge() payable {
    return gaugeAddress
}

function keeper() payable {
    return keeperAddress
}

function sub_e956dcd7(?) payable {
    return sub_e956dcd7Address
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function tendTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function balanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setProfitFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    profitFactor = arg1
    emit UpdatedProfitFactor(arg1);
}

function setDebtThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    debtThreshold = arg1
    emit UpdatedDebtThreshold(arg1);
}

function setMinReportDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    minReportDelay = arg1
    emit UpdatedMinReportDelay(arg1);
}

function setMaxReportDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    maxReportDelay = arg1
    emit UpdatedMaxReportDelay(arg1);
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    keeperAddress = arg1
    emit UpdatedKeeper(arg1);
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    strategistAddress = arg1
    emit UpdatedStrategist(arg1);
}

function setRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require msg.sender == strategistAddress
    rewardsAddress = arg1
    require ext_code.size(0x89eccc61b2d35eacce08284cf22c2d6487b80a3a)
    delegate 0x89eccc61b2d35eacce08284cf22c2d6487b80a3a.0xb6e17b7e with:
         gas gas_remaining wei
        args rewardsAddress, address(arg1), address(vaultAddress)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit UpdatedRewards(arg1);
}

function setMetadataURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if strategistAddress != msg.sender:
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require msg.sender == ext_call.return_data[12 len 20]
    metadataURI.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        metadataURI[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while metadataURI.length + 31 / 32 > idx:
        metadataURI[idx] = 0
        idx = idx + 1
        continue 
    emit UpdatedMetadataURI(Array(len=arg1.length, data=arg1[all]));
}

function estimatedTotalAssets() payable {
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint16(stor16.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(poolAddress)
    staticcall poolAddress.0xf6cd35ee with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(vaultAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (3 * ext_call.return_data[0])
}

function setEmergencyExit() payable {
    if strategistAddress != msg.sender:
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).guardian() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).management() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require msg.sender == ext_call.return_data[12 len 20]
    emergencyExit = 1
    require ext_code.size(address(vaultAddress))
    call address(vaultAddress).revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
}

function isActive() payable {
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    if ext_call.return_data[64] > 0:
        return (ext_call.return_data[64] > 0)
    require ext_code.size(gaugeAddress)
    staticcall gaugeAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint16(stor16.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(poolAddress)
    staticcall poolAddress.0xf6cd35ee with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(vaultAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (3 * ext_call.return_data[0] > 0)
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(vaultAddress)
    require ext_code.size(arg1)
    staticcall arg1.0xfbfa77cf with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == address(vaultAddress)
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).governance() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    if wantAddress == arg1:
        revert with 0, '!want'
    if address(vaultAddress) == arg1:
        revert with 0, '!shares'
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128 len 96] = call.data[calldata.size len 96]
    mem[ceil32(return_data.size) + 128] = poolAddress
    mem[ceil32(return_data.size) + 160] = stor15
    idx = 0
    while idx < ext_call.return_data[0]:
        require idx < ext_call.return_data[0]
        if arg1 == mem[(32 * idx) + 140 len 20]:
            revert with 0, '!protected'
        idx = idx + 1
        continue 
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).governance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 260] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 224] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + 260 len 28] = address(ext_call.return_data[0]) << 64
    mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 324] = 32
    mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 388 len floor32((5 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 324 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
    if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
        mem[(10 * ceil32(return_data.size)) + 456] = 0
    call arg1.mem[(4 * ceil32(return_data.size)) + 388 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 392 len (13 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 420] == bool(mem[(4 * ceil32(return_data.size)) + 420])
            if not mem[(4 * ceil32(return_data.size)) + 420]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function priceCheck(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg3:
        return 0
    if arg1 == arg2:
        return arg3
    if stor14 == arg2:
        mem[96] = 2
        mem[128] = arg1
        require stor14 == arg2
        mem[160] = stor14
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor13)
        staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _84 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223
        _88 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require return_data.size >= _84 + (32 * _88) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _88] = mem[_84 + 224 len 32 * _88]
        require _88 - 1 < _88
        mem[mem[64]] = mem[(32 * _88 - 1) + ceil32(return_data.size) + 224]
    else:
        mem[96] = 3
        mem[128 len 96] = call.data[calldata.size len 96]
        mem[128] = arg1
        mem[160] = stor14
        if stor14 == arg2:
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor13)
            staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _86 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255
            _90 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
            require (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require return_data.size >= _86 + (32 * _90) + 32
            mem[ceil32(return_data.size) + 256 len 32 * _90] = mem[_86 + 256 len 32 * _90]
            require _90 - 1 < _90
            mem[mem[64]] = mem[(32 * _90 - 1) + ceil32(return_data.size) + 256]
        else:
            mem[192] = arg2
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor13)
            staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _85 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255
            _89 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
            require (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require return_data.size >= _85 + (32 * _89) + 32
            mem[ceil32(return_data.size) + 256 len 32 * _89] = mem[_85 + 256 len 32 * _89]
            require _89 - 1 < _89
            mem[mem[64]] = mem[(32 * _89 - 1) + ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function ethToWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if address(stor16.field_0) == wantAddress:
        return arg1
    if stor14 == wantAddress:
        mem[96] = 2
        mem[128] = address(stor16.field_0)
        require stor14 == wantAddress
        mem[160] = stor14
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor13)
        staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _84 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
        _88 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _84 + (32 * _88) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _88] = mem[_84 + 224 len 32 * _88]
        require _88 - 1 < _88
        mem[mem[64]] = mem[(32 * _88 - 1) + ceil32(return_data.size) + 224]
    else:
        mem[96] = 3
        mem[128 len 96] = call.data[calldata.size len 96]
        mem[128] = address(stor16.field_0)
        mem[160] = stor14
        if stor14 == wantAddress:
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor13)
            staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _86 = mem[224 len 4], Mask(224, 32, arg1) >> 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
            _90 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
            require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require return_data.size >= _86 + (32 * _90) + 32
            mem[ceil32(return_data.size) + 256 len 32 * _90] = mem[_86 + 256 len 32 * _90]
            require _90 - 1 < _90
            mem[mem[64]] = mem[(32 * _90 - 1) + ceil32(return_data.size) + 256]
        else:
            mem[192] = wantAddress
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor13)
            staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _85 = mem[224 len 4], Mask(224, 32, arg1) >> 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
            _89 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
            require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require return_data.size >= _85 + (32 * _89) + 32
            mem[ceil32(return_data.size) + 256 len 32 * _89] = mem[_85 + 256 len 32 * _89]
            require _89 - 1 < _89
            mem[mem[64]] = mem[(32 * _89 - 1) + ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function harvester() payable {
    mem[132] = 0
    require ext_code.size(gaugeAddress)
    call gaugeAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uint16(stor16.field_0), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= stor18:
        mem[ceil32(return_data.size) + 100] = stor13
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(stor15)
        call stor15.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor13, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor14 == wantAddress:
            mem[(2 * ceil32(return_data.size)) + 128] = stor15
            require stor14 == wantAddress
            mem[(2 * ceil32(return_data.size)) + 160] = stor14
            mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(stor13)
            call stor13.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32
        else:
            mem[(2 * ceil32(return_data.size)) + 128 len 96] = call.data[calldata.size len 96]
            mem[(2 * ceil32(return_data.size)) + 128] = stor15
            mem[(2 * ceil32(return_data.size)) + 160] = stor14
            if stor14 == wantAddress:
            else:
                mem[(2 * ceil32(return_data.size)) + 192] = wantAddress
            mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 260] = 0
            mem[(2 * ceil32(return_data.size)) + 292] = 160
            mem[(2 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 324] = this.address
            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
            require ext_code.size(stor13)
            call stor13.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 3, mem[(2 * ceil32(return_data.size)) + 420 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= test266151307()
            require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256 <= test266151307()
            require return_data.size >= mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32
}

function tend() payable {
    if keeperAddress != msg.sender:
        if strategistAddress != msg.sender:
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).governance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).guardian() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    require ext_code.size(address(vaultAddress))
                    staticcall address(vaultAddress).management() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).debtOutstanding() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not emergencyExit:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < ext_call.return_data[0]:
            if 0 >= stor17:
                require ext_code.size(poolAddress)
                staticcall poolAddress.0xf6cd35ee with:
                        gas gas_remaining wei
                       args 100000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(gaugeAddress)
                call gaugeAddress.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uint16(stor16.field_0), 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_e956dcd7Address)
                call sub_e956dcd7Address.0xc4de93a5 with:
                     gas gas_remaining wei
                    args uint16(stor16.field_0), 0 / ext_call.return_data[0], this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            if 0 < stor19:
                if 0 >= stor17:
                    require ext_code.size(stor14)
                    call stor14.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_e956dcd7Address, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(sub_e956dcd7Address)
                    call sub_e956dcd7Address.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args uint16(stor16.field_0), 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    staticcall poolAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(gaugeAddress)
                    call gaugeAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint16(stor16.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor19 >= stor17:
                    require ext_code.size(stor14)
                    call stor14.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_e956dcd7Address, stor19
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(sub_e956dcd7Address)
                    call sub_e956dcd7Address.addLiquidity(uint256 arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args uint16(stor16.field_0), stor19, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(poolAddress)
                    staticcall poolAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolAddress)
                    call poolAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor10, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(gaugeAddress)
                    call gaugeAddress.deposit(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint16(stor16.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        require ext_code.size(0x89eccc61b2d35eacce08284cf22c2d6487b80a3a)
        delegate 0x89eccc61b2d35eacce08284cf22c2d6487b80a3a.0x4937cba9 with:
             gas gas_remaining wei
            args 0, uint32(stor1), address(this.address), 0, minReportDelay, maxReportDelay, debtThreshold, profitFactor
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == bool(delegate.return_data[0])
        return bool(delegate.return_data[0])
    if address(stor16.field_0) == wantAddress:
        require ext_code.size(0x89eccc61b2d35eacce08284cf22c2d6487b80a3a)
        delegate 0x89eccc61b2d35eacce08284cf22c2d6487b80a3a.0x4937cba9 with:
             gas gas_remaining wei
            args 0, uint32(stor1), address(this.address), arg1, minReportDelay, maxReportDelay, debtThreshold, profitFactor
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == bool(delegate.return_data[0])
        return bool(delegate.return_data[0])
    if stor14 == wantAddress:
        mem[96] = 2
        mem[128] = address(stor16.field_0)
        require stor14 == wantAddress
        mem[160] = stor14
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor13)
        staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _108 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
        _112 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _108 + (32 * _112) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _112] = mem[_108 + 224 len 32 * _112]
        require _112 - 1 < _112
        _172 = mem[(32 * _112 - 1) + ceil32(return_data.size) + 224]
        mem[mem[64] + 4] = address(vaultAddress)
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _172
        mem[mem[64] + 100] = minReportDelay
        mem[mem[64] + 132] = maxReportDelay
        mem[mem[64] + 164] = debtThreshold
        mem[mem[64] + 196] = profitFactor
        require ext_code.size(0x89eccc61b2d35eacce08284cf22c2d6487b80a3a)
        delegate 0x89eccc61b2d35eacce08284cf22c2d6487b80a3a.0x4937cba9 with:
             gas gas_remaining wei
            args address(vaultAddress), address(this.address), _172, minReportDelay, maxReportDelay, debtThreshold, profitFactor
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _184 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_184] == bool(mem[_184])
        mem[mem[64]] = bool(mem[_184])
    else:
        mem[96] = 3
        mem[128 len 96] = call.data[calldata.size len 96]
        mem[128] = address(stor16.field_0)
        mem[160] = stor14
        if stor14 == wantAddress:
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor13)
            staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _110 = mem[224 len 4], Mask(224, 32, arg1) >> 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
            _114 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
            require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require return_data.size >= _110 + (32 * _114) + 32
            mem[ceil32(return_data.size) + 256 len 32 * _114] = mem[_110 + 256 len 32 * _114]
            require _114 - 1 < _114
            _174 = mem[(32 * _114 - 1) + ceil32(return_data.size) + 256]
            mem[mem[64] + 4] = address(vaultAddress)
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _174
            mem[mem[64] + 100] = minReportDelay
            mem[mem[64] + 132] = maxReportDelay
            mem[mem[64] + 164] = debtThreshold
            mem[mem[64] + 196] = profitFactor
            require ext_code.size(0x89eccc61b2d35eacce08284cf22c2d6487b80a3a)
            delegate 0x89eccc61b2d35eacce08284cf22c2d6487b80a3a.0x4937cba9 with:
                 gas gas_remaining wei
                args address(vaultAddress), address(this.address), _174, minReportDelay, maxReportDelay, debtThreshold, profitFactor
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_186] == bool(mem[_186])
            mem[mem[64]] = bool(mem[_186])
        else:
            mem[192] = wantAddress
            mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[228] = arg1
            mem[260] = 64
            mem[292] = 3
            idx = 0
            s = 128
            t = 324
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor13)
            staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=3, data=mem[324 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            _109 = mem[224 len 4], Mask(224, 32, arg1) >> 32
            require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
            _113 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
            require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
            require return_data.size >= _109 + (32 * _113) + 32
            mem[ceil32(return_data.size) + 256 len 32 * _113] = mem[_109 + 256 len 32 * _113]
            require _113 - 1 < _113
            _173 = mem[(32 * _113 - 1) + ceil32(return_data.size) + 256]
            mem[mem[64] + 4] = address(vaultAddress)
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _173
            mem[mem[64] + 100] = minReportDelay
            mem[mem[64] + 132] = maxReportDelay
            mem[mem[64] + 164] = debtThreshold
            mem[mem[64] + 196] = profitFactor
            require ext_code.size(0x89eccc61b2d35eacce08284cf22c2d6487b80a3a)
            delegate 0x89eccc61b2d35eacce08284cf22c2d6487b80a3a.0x4937cba9 with:
                 gas gas_remaining wei
                args address(vaultAddress), address(this.address), _173, minReportDelay, maxReportDelay, debtThreshold, profitFactor
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_185] == bool(mem[_185])
            mem[mem[64]] = bool(mem[_185])
    return memory
      from mem[64]
       len 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        if not arg1:
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = arg1
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
            mem[ceil32(return_data.size) + 328] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if arg1 < stor17:
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 100] = 100000
                require ext_code.size(poolAddress)
                staticcall poolAddress.0xf6cd35ee with:
                        gas gas_remaining wei
                       args 100000
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 96] = 26
                mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                require ext_code.size(gaugeAddress)
                call gaugeAddress.withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uint16(stor16.field_0), arg1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 164] = uint16(stor16.field_160)
                mem[(2 * ceil32(return_data.size)) + 196] = arg1 / ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(sub_e956dcd7Address)
                call sub_e956dcd7Address.0xc4de93a5 with:
                     gas gas_remaining wei
                    args uint16(stor16.field_0), arg1 / ext_call.return_data[0], this.address
                mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 196] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 228] = arg1
                mem[(4 * ceil32(return_data.size)) + 160] = 68
                mem[(4 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 260] = 32
                mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
                call wantAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                        if not mem[(4 * ceil32(return_data.size)) + 356]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        return 0
    mem[ceil32(return_data.size) + 96] = 30
    mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not arg1:
        mem[ceil32(return_data.size) + 196] = msg.sender
        mem[ceil32(return_data.size) + 228] = arg1
        mem[ceil32(return_data.size) + 160] = 68
        mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 260] = 32
        mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
        mem[ceil32(return_data.size) + 392] = 0
        call wantAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                if not mem[ceil32(return_data.size) + 356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if arg1 < stor17:
            mem[ceil32(return_data.size) + 196] = msg.sender
            mem[ceil32(return_data.size) + 228] = arg1
            mem[ceil32(return_data.size) + 160] = 68
            mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 260] = 32
            mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
            mem[ceil32(return_data.size) + 392] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                    if not mem[ceil32(return_data.size) + 356]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 164] = 100000
            require ext_code.size(poolAddress)
            staticcall poolAddress.0xf6cd35ee with:
                    gas gas_remaining wei
                   args 100000
            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            require ext_code.size(gaugeAddress)
            call gaugeAddress.withdraw(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args uint16(stor16.field_0), arg1 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 228] = uint16(stor16.field_160)
            mem[(2 * ceil32(return_data.size)) + 260] = arg1 / ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            require ext_code.size(sub_e956dcd7Address)
            call sub_e956dcd7Address.0xc4de93a5 with:
                 gas gas_remaining wei
                args uint16(stor16.field_0), arg1 / ext_call.return_data[0], this.address
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 292] = arg1
            mem[(4 * ceil32(return_data.size)) + 224] = 68
            mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 324] = 32
            mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
            mem[(4 * ceil32(return_data.size)) + 456] = 0
            call wantAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 420] == bool(mem[(4 * ceil32(return_data.size)) + 420])
                    if not mem[(4 * ceil32(return_data.size)) + 420]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (arg1 - ext_call.return_data[0])
}



}
