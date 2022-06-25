contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - changePool(address arg1)
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
address stor11;
address stor12;
address stor13;
address poolAddress;
uint32 stor15;
address stor15;
uint256 stor15;
address stor16;
address stor17;
uint256 stor18;
uint256 stor19;
uint32 stor21;
uint256 stor21; offset 32
uint256 stor21;

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

function keeper() payable {
    return keeperAddress
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

function sub_c311faa5(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == strategistAddress
    stor18 = arg1
}

function setPid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == strategistAddress
    uint256(stor21.field_0) = arg1
}

function sub_3c83a7a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == strategistAddress
    if not address(arg1):
        revert with 0, 'Must be valid address'
    stor12 = address(arg1)
}

function sub_be8f8e27(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == strategistAddress
    if not address(arg1):
        revert with 0, 'Must be valid address'
    stor11 = address(arg1)
}

function balanceOfVault() payable {
    require ext_code.size(stor16)
    staticcall stor16.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_fc51349a(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == strategistAddress
    require ext_code.size(address(stor15))
    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function stakedBalance() payable {
    require ext_code.size(address(stor15))
    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor21.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0]
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

function sub_6944278e(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x907448ed with:
            gas gas_remaining wei
           args wantAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
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

function invested() payable {
    require ext_code.size(address(stor15))
    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor21.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(stor16)
    staticcall stor16.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function sub_377c58bf(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == strategistAddress
    require ext_code.size(stor16)
    call stor16.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args poolAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(poolAddress)
    call poolAddress.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args wantAddress, arg1, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
    delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0xb6e17b7e with:
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

function sub_d78d221d(?) payable {
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor21.field_0)
    mem[132] = this.address
    require ext_code.size(address(stor15))
    staticcall address(stor15).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor21.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    require uint32(stor21.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
    require 0, mem[164 len 28] <= test266151307()
    require 0, mem[164 len 28] + 127 < return_data.size + 96
    require mem[0, mem[164 len 28] + 96] <= test266151307()
    require ceil32(mem[0, mem[164 len 28] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[0, mem[164 len 28] + 96]) + 128 <= test266151307()
    require 0, mem[164 len 28] + mem[0, mem[164 len 28] + 96] + 32 <= return_data.size
    return mem[96 len 4], Mask(224, 0, stor21.field_32)
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
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor16
    mem[ceil32(return_data.size) + 160] = stor17
    idx = 0
    while idx < 2:
        require idx < 2
        if arg1 == mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            revert with 0, '!protected'
        idx = idx + 1
        continue 
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).governance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + 228 len 28] = address(ext_call.return_data[0]) << 64
    mem[(4 * ceil32(return_data.size)) + 224 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 292] = 32
    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 356 len floor32((5 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 292 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
    if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
        mem[(10 * ceil32(return_data.size)) + 424] = 0
    call arg1.mem[(4 * ceil32(return_data.size)) + 356 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 360 len (13 * ceil32(return_data.size)) + 64]
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
        mem[(4 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 388] == bool(mem[(4 * ceil32(return_data.size)) + 388])
            if not mem[(4 * ceil32(return_data.size)) + 388]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if 0 >= stor19:
                require ext_code.size(poolAddress)
                call poolAddress.deposit(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args wantAddress, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor16)
                staticcall stor16.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor15))
                call address(stor15).deposit(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uint256(stor21.field_0), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor16)
            staticcall stor16.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 <= ext_call.return_data[0]:
                require ext_code.size(poolAddress)
                call poolAddress.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args wantAddress, 0, 0, address(this.address), block.timestamp
            else:
                require ext_code.size(address(stor15))
                staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args uint256(stor21.field_0), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] <= -ext_call.return_data[0]:
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), -ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor16)
                staticcall stor16.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolAddress)
                if not ext_call.return_data[0]:
                    call poolAddress.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args wantAddress, 0, 0, address(this.address), block.timestamp
                else:
                    staticcall poolAddress.0x907448ed with:
                            gas gas_remaining wei
                           args wantAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[64] == bool(ext_call.return_data[64])
                    require ext_code.size(poolAddress)
                    call poolAddress.withdraw(address arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args wantAddress, ext_call.return_data[0], 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function ethToWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if stor13 == stor13:
        mem[96] = 2
        mem[128] = stor13
        if stor13 == stor13:
            mem[160] = wantAddress
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
            require ext_code.size(stor11)
            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _121 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _127 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require return_data.size >= _121 + (32 * _127) + 32
            mem[ceil32(return_data.size) + 224 len 32 * _127] = mem[_121 + 224 len 32 * _127]
            if _127 - 1 < _127:
                return memory
                  from (32 * _127 - 1) + ceil32(return_data.size) + 224
                   len 32
    else:
        if stor13 == wantAddress:
            mem[128] = stor13
            if stor13 == wantAddress:
                mem[160] = wantAddress
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
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _123 = mem[192 len 4], Mask(224, 32, arg1) >> 32
                require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
                _129 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require return_data.size >= _123 + (32 * _129) + 32
                mem[ceil32(return_data.size) + 224 len 32 * _129] = mem[_123 + 224 len 32 * _129]
                if _129 - 1 < _129:
                    return memory
                      from (32 * _129 - 1) + ceil32(return_data.size) + 224
                       len 32
        else:
            mem[128 len 96] = call.data[calldata.size len 96]
            mem[128] = stor13
            if stor13 == wantAddress:
                mem[160] = wantAddress
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
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _125 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
                _131 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _125 + (32 * _131) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _131] = mem[_125 + 256 len 32 * _131]
                if _131 - 1 < _131:
                    return memory
                      from (32 * _131 - 1) + ceil32(return_data.size) + 256
                       len 32
            else:
                mem[160] = stor13
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
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _124 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
                _130 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _124 + (32 * _130) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _130] = mem[_124 + 256 len 32 * _130]
                if _130 - 1 < _130:
                    return memory
                      from (32 * _130 - 1) + ceil32(return_data.size) + 256
                       len 32
    revert
}

function sub_7dd52c75(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not arg3:
        return 0
    if stor13 == address(arg1):
        mem[96] = 2
        mem[128] = address(arg1)
        if stor13 == address(arg1):
            mem[160] = address(arg2)
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
            require ext_code.size(stor11)
            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _121 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223
            _127 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
            require (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require return_data.size >= _121 + (32 * _127) + 32
            mem[ceil32(return_data.size) + 224 len 32 * _127] = mem[_121 + 224 len 32 * _127]
            if _127 - 1 < _127:
                return memory
                  from (32 * _127 - 1) + ceil32(return_data.size) + 224
                   len 32
    else:
        if stor13 == address(arg2):
            mem[128] = address(arg1)
            if stor13 == address(arg2):
                mem[160] = address(arg2)
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
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _123 = mem[192 len 4], Mask(224, 32, arg3) >> 32
                require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223
                _129 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= test266151307()
                require (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
                require return_data.size >= _123 + (32 * _129) + 32
                mem[ceil32(return_data.size) + 224 len 32 * _129] = mem[_123 + 224 len 32 * _129]
                if _129 - 1 < _129:
                    return memory
                      from (32 * _129 - 1) + ceil32(return_data.size) + 224
                       len 32
        else:
            mem[128 len 96] = call.data[calldata.size len 96]
            mem[128] = address(arg1)
            if stor13 == address(arg2):
                mem[160] = address(arg2)
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
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _125 = mem[224 len 4], Mask(224, 32, arg3) >> 32
                require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255
                _131 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require return_data.size >= _125 + (32 * _131) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _131] = mem[_125 + 256 len 32 * _131]
                if _131 - 1 < _131:
                    return memory
                      from (32 * _131 - 1) + ceil32(return_data.size) + 256
                       len 32
            else:
                mem[160] = stor13
                mem[192] = address(arg2)
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
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _124 = mem[224 len 4], Mask(224, 32, arg3) >> 32
                require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg3) >> 32 + 255
                _130 = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require return_data.size >= _124 + (32 * _130) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _130] = mem[_124 + 256 len 32 * _130]
                if _130 - 1 < _130:
                    return memory
                      from (32 * _130 - 1) + ceil32(return_data.size) + 256
                       len 32
    revert
}

function sub_9b3a539a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == strategistAddress
    if address(stor15) == address(arg1):
        revert with 0, 'Your a Dumbass'
    mem[100] = this.address
    mem[132] = address(stor15)
    require ext_code.size(stor16)
    staticcall stor16.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stor15)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 41
    mem[ceil32(return_data.size) + 128 len 41] = 0xfe5361666545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = address(stor15)
    require ext_code.size(stor16)
    staticcall stor16.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stor15)
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 41
        mem[(2 * ceil32(return_data.size)) + 260 len 64] = 0xfe5361666545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[ceil32(return_data.size) + 169 len 23]
        mem[(2 * ceil32(return_data.size)) + 301] = 0
        revert with 0, 
                    32,
                    41,
                    0xfe5361666545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[ceil32(return_data.size) + 169 len 23] >> 72,
                    0
    mem[(2 * ceil32(return_data.size)) + 228] = address(stor15)
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 192] = 68
    mem[(2 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 0, stor15)
    mem[(2 * ceil32(return_data.size)) + 224 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 292] = 32
    mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor16):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stor16):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 356 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0, 0
    mem[(2 * ceil32(return_data.size)) + 424] = 0
    call stor16 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor15), uint32(stor15), 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor15) == bool(0, Mask(224, 0, stor15))
            if not 0, Mask(224, 0, stor15):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        address(stor15) = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 360] = this.address
        mem[(2 * ceil32(return_data.size)) + 392] = address(arg1)
        require ext_code.size(stor16)
        staticcall stor16.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg1)
        mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(4 * ceil32(return_data.size)) + 392] = address(arg1)
        mem[(4 * ceil32(return_data.size)) + 424] = -1
        mem[(4 * ceil32(return_data.size)) + 356] = 68
        mem[(4 * ceil32(return_data.size)) + 388 len 4] = approve(address arg1, uint256 arg2)
        mem[(4 * ceil32(return_data.size)) + 456] = 32
        mem[(4 * ceil32(return_data.size)) + 488] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor16):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(stor16):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 520 len 96] = 0, address(arg1), -1, 0
        mem[(4 * ceil32(return_data.size)) + 588] = 0
        call stor16 with:
           funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor15) == bool(0, Mask(224, 0, stor15))
                if not 0, Mask(224, 0, stor15):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 552 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 552] == bool(mem[(4 * ceil32(return_data.size)) + 552])
                if not mem[(4 * ceil32(return_data.size)) + 552]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + 356] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 388] == bool(mem[(2 * ceil32(return_data.size)) + 388])
        if not mem[(2 * ceil32(return_data.size)) + 388]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    address(stor15) = address(arg1)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = address(arg1)
    require ext_code.size(stor16)
    staticcall stor16.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(arg1)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = address(arg1)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = -1
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 4] = approve(address arg1, uint256 arg2)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor16):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stor16):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 96] = 0, address(arg1), -1, 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
    call stor16 with:
       funct Mask(32, 224, 0, address(arg1), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(arg1), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor15) == bool(0, Mask(224, 0, stor15))
            if not 0, Mask(224, 0, stor15):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 522] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 526] = 32
        mem[(8 * ceil32(return_data.size)) + 558] = 32
        mem[(8 * ceil32(return_data.size)) + 590] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 522
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553]:
    mem[(8 * ceil32(return_data.size)) + 522] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 526] = 32
    mem[(8 * ceil32(return_data.size)) + 558] = 42
    mem[(8 * ceil32(return_data.size)) + 590] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 622] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (8 * ceil32(return_data.size)) + 522
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
        delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0x4937cba9 with:
             gas gas_remaining wei
            args 0, uint32(stor1), address(this.address), 0, minReportDelay, maxReportDelay, debtThreshold, profitFactor
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == bool(delegate.return_data[0])
        return bool(delegate.return_data[0])
    if stor13 == stor13:
        mem[96] = 2
        mem[128] = stor13
        require stor13 == stor13
        mem[160] = wantAddress
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
        require ext_code.size(stor11)
        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _149 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
        _155 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _149 + (32 * _155) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _155] = mem[_149 + 224 len 32 * _155]
        require _155 - 1 < _155
        mem[mem[64] + 4] = address(vaultAddress)
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = mem[(32 * _155 - 1) + ceil32(return_data.size) + 224]
        mem[mem[64] + 100] = minReportDelay
        mem[mem[64] + 132] = maxReportDelay
        mem[mem[64] + 164] = debtThreshold
        mem[mem[64] + 196] = profitFactor
        require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
        delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0x4937cba9 with:
             gas gas_remaining wei
            args address(vaultAddress), address(this.address), mem[(32 * _155 - 1) + ceil32(return_data.size) + 224], minReportDelay, maxReportDelay, debtThreshold, profitFactor
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_263] == bool(mem[_263])
        mem[mem[64]] = bool(mem[_263])
    else:
        if stor13 == wantAddress:
            mem[96] = 2
            mem[128] = stor13
            require stor13 == wantAddress
            mem[160] = wantAddress
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
            require ext_code.size(stor11)
            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg1, Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _151 = mem[192 len 4], Mask(224, 32, arg1) >> 32
            require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
            require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
            _157 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
            require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
            require return_data.size >= _151 + (32 * _157) + 32
            mem[ceil32(return_data.size) + 224 len 32 * _157] = mem[_151 + 224 len 32 * _157]
            require _157 - 1 < _157
            mem[mem[64] + 4] = address(vaultAddress)
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = mem[(32 * _157 - 1) + ceil32(return_data.size) + 224]
            mem[mem[64] + 100] = minReportDelay
            mem[mem[64] + 132] = maxReportDelay
            mem[mem[64] + 164] = debtThreshold
            mem[mem[64] + 196] = profitFactor
            require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
            delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0x4937cba9 with:
                 gas gas_remaining wei
                args address(vaultAddress), address(this.address), mem[(32 * _157 - 1) + ceil32(return_data.size) + 224], minReportDelay, maxReportDelay, debtThreshold, profitFactor
            mem[mem[64]] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            _265 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_265] == bool(mem[_265])
            mem[mem[64]] = bool(mem[_265])
        else:
            mem[96] = 3
            mem[128 len 96] = call.data[calldata.size len 96]
            mem[128] = stor13
            if stor13 == wantAddress:
                mem[160] = wantAddress
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
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _153 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
                _159 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _153 + (32 * _159) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _159] = mem[_153 + 256 len 32 * _159]
                require _159 - 1 < _159
                mem[mem[64] + 4] = address(vaultAddress)
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = mem[(32 * _159 - 1) + ceil32(return_data.size) + 256]
                mem[mem[64] + 100] = minReportDelay
                mem[mem[64] + 132] = maxReportDelay
                mem[mem[64] + 164] = debtThreshold
                mem[mem[64] + 196] = profitFactor
                require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
                delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0x4937cba9 with:
                     gas gas_remaining wei
                    args address(vaultAddress), address(this.address), mem[(32 * _159 - 1) + ceil32(return_data.size) + 256], minReportDelay, maxReportDelay, debtThreshold, profitFactor
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_267] == bool(mem[_267])
                mem[mem[64]] = bool(mem[_267])
            else:
                mem[160] = stor13
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
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=3, data=mem[324 len 96])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _152 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require return_data.size + 224 > mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255
                _158 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= test266151307()
                require (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 256
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _152 + (32 * _158) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _158] = mem[_152 + 256 len 32 * _158]
                require _158 - 1 < _158
                mem[mem[64] + 4] = address(vaultAddress)
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = mem[(32 * _158 - 1) + ceil32(return_data.size) + 256]
                mem[mem[64] + 100] = minReportDelay
                mem[mem[64] + 132] = maxReportDelay
                mem[mem[64] + 164] = debtThreshold
                mem[mem[64] + 196] = profitFactor
                require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
                delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0x4937cba9 with:
                     gas gas_remaining wei
                    args address(vaultAddress), address(this.address), mem[(32 * _158 - 1) + ceil32(return_data.size) + 256], minReportDelay, maxReportDelay, debtThreshold, profitFactor
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_266] == bool(mem[_266])
                mem[mem[64]] = bool(mem[_266])
    return memory
      from mem[64]
       len 32
}

function estimatedTotalAssets() payable {
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor15))
    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor21.field_0), this.address
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor16)
    staticcall stor16.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[(4 * ceil32(return_data.size)) + 96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 100] = uint256(stor21.field_0)
        mem[(4 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(address(stor15))
        staticcall address(stor15).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args uint256(stor21.field_0), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 128
        _28 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor21.field_32)
        require uint32(stor21.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
        _33 = 0, mem[(4 * ceil32(return_data.size)) + 164 len 28]
        require 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] <= test266151307()
        require (4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _35 = mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]
        require mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96] <= test266151307()
        require ceil32(mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]) + 128 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]) + 128
        mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]
        require _33 + _35 + 32 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_35)] = mem[(4 * ceil32(return_data.size)) + _33 + 128 len ceil32(_35)]
        if ceil32(_35) <= _35:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _745 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _749 = mem[_745]
            if mem[_745] + _28 < _28:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_745] + _28:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0]
            if stor13 == stor17:
                _761 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_761]
                mem[_761 + 32] = stor17
                require 1 < mem[_761]
                if stor13 == stor17:
                    mem[_761 + 64] = wantAddress
                    mem[_761 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_761 + 100] = _749 + _28
                    mem[_761 + 132] = 64
                    mem[_761 + 164] = mem[_761]
                    idx = 0
                    s = _761 + 32
                    t = _761 + 196
                    while idx < mem[_761]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _761 + (32 * mem[_761]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1476 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1500 = mem[_1476]
                    require mem[_1476] <= test266151307()
                    require _1476 + return_data.size > _1476 + mem[_1476] + 31
                    _1524 = mem[_1476 + mem[_1476]]
                    require mem[_1476 + mem[_1476]] <= test266151307()
                    require (32 * mem[_1476 + mem[_1476]]) + 32 >= 0 and _1476 + ceil32(return_data.size) + (32 * mem[_1476 + mem[_1476]]) + 32 <= test266151307()
                    mem[64] = _1476 + ceil32(return_data.size) + (32 * mem[_1476 + mem[_1476]]) + 32
                    mem[_1476 + ceil32(return_data.size)] = _1524
                    require return_data.size >= _1500 + (32 * _1524) + 32
                    mem[_1476 + ceil32(return_data.size) + 32 len 32 * _1524] = mem[_1476 + _1500 + 32 len 32 * _1524]
                    require _1524 - 1 < _1524
                    if not mem[(32 * _1524 - 1) + _1476 + ceil32(return_data.size) + 32]:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ext_call.return_data[0]
                    if 9 * mem[(32 * _1524 - 1) + _1476 + ceil32(return_data.size) + 32] / mem[(32 * _1524 - 1) + _1476 + ceil32(return_data.size) + 32] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (9 * mem[(32 * _1524 - 1) + _1476 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((9 * mem[(32 * _1524 - 1) + _1476 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
                mem[_761 + 64] = stor13
                require 2 < mem[_761]
                mem[_761 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_761 + 100] = _749 + _28
                mem[_761 + 132] = 64
                mem[_761 + 164] = mem[_761]
                idx = 0
                s = _761 + 32
                t = _761 + 196
                while idx < mem[_761]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _761 + (32 * mem[_761]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1475 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1499 = mem[_1475]
                require mem[_1475] <= test266151307()
                require _1475 + return_data.size > _1475 + mem[_1475] + 31
                _1523 = mem[_1475 + mem[_1475]]
                require mem[_1475 + mem[_1475]] <= test266151307()
                require (32 * mem[_1475 + mem[_1475]]) + 32 >= 0 and _1475 + ceil32(return_data.size) + (32 * mem[_1475 + mem[_1475]]) + 32 <= test266151307()
                mem[64] = _1475 + ceil32(return_data.size) + (32 * mem[_1475 + mem[_1475]]) + 32
                mem[_1475 + ceil32(return_data.size)] = _1523
                require return_data.size >= _1499 + (32 * _1523) + 32
                mem[_1475 + ceil32(return_data.size) + 32 len 32 * _1523] = mem[_1475 + _1499 + 32 len 32 * _1523]
                require _1523 - 1 < _1523
                if not mem[(32 * _1523 - 1) + _1475 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0]
                if 9 * mem[(32 * _1523 - 1) + _1475 + ceil32(return_data.size) + 32] / mem[(32 * _1523 - 1) + _1475 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1523 - 1) + _1475 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1523 - 1) + _1475 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
            if stor13 == wantAddress:
                _767 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_767]
                mem[_767 + 32] = stor17
                require 1 < mem[_767]
                if stor13 == wantAddress:
                    mem[_767 + 64] = wantAddress
                    mem[_767 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_767 + 100] = _749 + _28
                    mem[_767 + 132] = 64
                    mem[_767 + 164] = mem[_767]
                    idx = 0
                    s = _767 + 32
                    t = _767 + 196
                    while idx < mem[_767]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _767 + (32 * mem[_767]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1478 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1502 = mem[_1478]
                    require mem[_1478] <= test266151307()
                    require _1478 + return_data.size > _1478 + mem[_1478] + 31
                    _1526 = mem[_1478 + mem[_1478]]
                    require mem[_1478 + mem[_1478]] <= test266151307()
                    require (32 * mem[_1478 + mem[_1478]]) + 32 >= 0 and _1478 + ceil32(return_data.size) + (32 * mem[_1478 + mem[_1478]]) + 32 <= test266151307()
                    mem[64] = _1478 + ceil32(return_data.size) + (32 * mem[_1478 + mem[_1478]]) + 32
                    mem[_1478 + ceil32(return_data.size)] = _1526
                    require return_data.size >= _1502 + (32 * _1526) + 32
                    mem[_1478 + ceil32(return_data.size) + 32 len 32 * _1526] = mem[_1478 + _1502 + 32 len 32 * _1526]
                    require _1526 - 1 < _1526
                    if not mem[(32 * _1526 - 1) + _1478 + ceil32(return_data.size) + 32]:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ext_call.return_data[0]
                    if 9 * mem[(32 * _1526 - 1) + _1478 + ceil32(return_data.size) + 32] / mem[(32 * _1526 - 1) + _1478 + ceil32(return_data.size) + 32] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (9 * mem[(32 * _1526 - 1) + _1478 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((9 * mem[(32 * _1526 - 1) + _1478 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
                mem[_767 + 64] = stor13
                require 2 < mem[_767]
                mem[_767 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_767 + 100] = _749 + _28
                mem[_767 + 132] = 64
                mem[_767 + 164] = mem[_767]
                idx = 0
                s = _767 + 32
                t = _767 + 196
                while idx < mem[_767]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _767 + (32 * mem[_767]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1477 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1501 = mem[_1477]
                require mem[_1477] <= test266151307()
                require _1477 + return_data.size > _1477 + mem[_1477] + 31
                _1525 = mem[_1477 + mem[_1477]]
                require mem[_1477 + mem[_1477]] <= test266151307()
                require (32 * mem[_1477 + mem[_1477]]) + 32 >= 0 and _1477 + ceil32(return_data.size) + (32 * mem[_1477 + mem[_1477]]) + 32 <= test266151307()
                mem[64] = _1477 + ceil32(return_data.size) + (32 * mem[_1477 + mem[_1477]]) + 32
                mem[_1477 + ceil32(return_data.size)] = _1525
                require return_data.size >= _1501 + (32 * _1525) + 32
                mem[_1477 + ceil32(return_data.size) + 32 len 32 * _1525] = mem[_1477 + _1501 + 32 len 32 * _1525]
                require _1525 - 1 < _1525
                if not mem[(32 * _1525 - 1) + _1477 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0]
                if 9 * mem[(32 * _1525 - 1) + _1477 + ceil32(return_data.size) + 32] / mem[(32 * _1525 - 1) + _1477 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1525 - 1) + _1477 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1525 - 1) + _1477 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
            _768 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[_768 + 32 len 96] = call.data[calldata.size len 96]
            require 0 < mem[_768]
            mem[_768 + 32] = stor17
            require 1 < mem[_768]
            if stor13 == wantAddress:
                mem[_768 + 64] = wantAddress
                mem[_768 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_768 + 132] = _749 + _28
                mem[_768 + 164] = 64
                mem[_768 + 196] = mem[_768]
                idx = 0
                s = _768 + 32
                t = _768 + 228
                while idx < mem[_768]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _768 + (32 * mem[_768]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1480 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1504 = mem[_1480]
                require mem[_1480] <= test266151307()
                require _1480 + return_data.size > _1480 + mem[_1480] + 31
                _1528 = mem[_1480 + mem[_1480]]
                require mem[_1480 + mem[_1480]] <= test266151307()
                require (32 * mem[_1480 + mem[_1480]]) + 32 >= 0 and _1480 + ceil32(return_data.size) + (32 * mem[_1480 + mem[_1480]]) + 32 <= test266151307()
                mem[64] = _1480 + ceil32(return_data.size) + (32 * mem[_1480 + mem[_1480]]) + 32
                mem[_1480 + ceil32(return_data.size)] = _1528
                require return_data.size >= _1504 + (32 * _1528) + 32
                mem[_1480 + ceil32(return_data.size) + 32 len 32 * _1528] = mem[_1480 + _1504 + 32 len 32 * _1528]
                require _1528 - 1 < _1528
                if not mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0]
                if 9 * mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32] / mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
            mem[_768 + 64] = stor13
            require 2 < mem[_768]
            mem[_768 + 96] = wantAddress
            mem[_768 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_768 + 132] = _749 + _28
            mem[_768 + 164] = 64
            mem[_768 + 196] = mem[_768]
            idx = 0
            s = _768 + 32
            t = _768 + 228
            while idx < mem[_768]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _768 + (32 * mem[_768]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1479 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1503 = mem[_1479]
            require mem[_1479] <= test266151307()
            require _1479 + return_data.size > _1479 + mem[_1479] + 31
            _1527 = mem[_1479 + mem[_1479]]
            require mem[_1479 + mem[_1479]] <= test266151307()
            require (32 * mem[_1479 + mem[_1479]]) + 32 >= 0 and _1479 + ceil32(return_data.size) + (32 * mem[_1479 + mem[_1479]]) + 32 <= test266151307()
            mem[64] = _1479 + ceil32(return_data.size) + (32 * mem[_1479 + mem[_1479]]) + 32
            mem[_1479 + ceil32(return_data.size)] = _1527
            require return_data.size >= _1503 + (32 * _1527) + 32
            mem[_1479 + ceil32(return_data.size) + 32 len 32 * _1527] = mem[_1479 + _1503 + 32 len 32 * _1527]
            require _1527 - 1 < _1527
            if not mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0]
            if 9 * mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32] / mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
        mem[_35 + (6 * ceil32(return_data.size)) + 128] = 0
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor17)
        staticcall stor17.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _746 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _750 = mem[_746]
        if mem[_746] + _28 < _28:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[_746] + _28:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0]
        if stor13 == stor17:
            _762 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_762]
            mem[_762 + 32] = stor17
            require 1 < mem[_762]
            if stor13 == stor17:
                mem[_762 + 64] = wantAddress
                mem[_762 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_762 + 100] = _750 + _28
                mem[_762 + 132] = 64
                mem[_762 + 164] = mem[_762]
                idx = 0
                s = _762 + 32
                t = _762 + 196
                while idx < mem[_762]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1482 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1506 = mem[_1482]
                require mem[_1482] <= test266151307()
                require _1482 + return_data.size > _1482 + mem[_1482] + 31
                _1530 = mem[_1482 + mem[_1482]]
                require mem[_1482 + mem[_1482]] <= test266151307()
                require (32 * mem[_1482 + mem[_1482]]) + 32 >= 0 and _1482 + ceil32(return_data.size) + (32 * mem[_1482 + mem[_1482]]) + 32 <= test266151307()
                mem[64] = _1482 + ceil32(return_data.size) + (32 * mem[_1482 + mem[_1482]]) + 32
                mem[_1482 + ceil32(return_data.size)] = _1530
                require return_data.size >= _1506 + (32 * _1530) + 32
                mem[_1482 + ceil32(return_data.size) + 32 len 32 * _1530] = mem[_1482 + _1506 + 32 len 32 * _1530]
                require _1530 - 1 < _1530
                if not mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0]
                if 9 * mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32] / mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
            mem[_762 + 64] = stor13
            require 2 < mem[_762]
            mem[_762 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_762 + 100] = _750 + _28
            mem[_762 + 132] = 64
            mem[_762 + 164] = mem[_762]
            idx = 0
            s = _762 + 32
            t = _762 + 196
            while idx < mem[_762]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1481 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1505 = mem[_1481]
            require mem[_1481] <= test266151307()
            require _1481 + return_data.size > _1481 + mem[_1481] + 31
            _1529 = mem[_1481 + mem[_1481]]
            require mem[_1481 + mem[_1481]] <= test266151307()
            require (32 * mem[_1481 + mem[_1481]]) + 32 >= 0 and _1481 + ceil32(return_data.size) + (32 * mem[_1481 + mem[_1481]]) + 32 <= test266151307()
            mem[64] = _1481 + ceil32(return_data.size) + (32 * mem[_1481 + mem[_1481]]) + 32
            mem[_1481 + ceil32(return_data.size)] = _1529
            require return_data.size >= _1505 + (32 * _1529) + 32
            mem[_1481 + ceil32(return_data.size) + 32 len 32 * _1529] = mem[_1481 + _1505 + 32 len 32 * _1529]
            require _1529 - 1 < _1529
            if not mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0]
            if 9 * mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32] / mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
        if stor13 == wantAddress:
            _769 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_769]
            mem[_769 + 32] = stor17
            require 1 < mem[_769]
            if stor13 == wantAddress:
                mem[_769 + 64] = wantAddress
                mem[_769 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_769 + 100] = _750 + _28
                mem[_769 + 132] = 64
                mem[_769 + 164] = mem[_769]
                idx = 0
                s = _769 + 32
                t = _769 + 196
                while idx < mem[_769]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _769 + (32 * mem[_769]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1484 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1508 = mem[_1484]
                require mem[_1484] <= test266151307()
                require _1484 + return_data.size > _1484 + mem[_1484] + 31
                _1532 = mem[_1484 + mem[_1484]]
                require mem[_1484 + mem[_1484]] <= test266151307()
                require (32 * mem[_1484 + mem[_1484]]) + 32 >= 0 and _1484 + ceil32(return_data.size) + (32 * mem[_1484 + mem[_1484]]) + 32 <= test266151307()
                mem[64] = _1484 + ceil32(return_data.size) + (32 * mem[_1484 + mem[_1484]]) + 32
                mem[_1484 + ceil32(return_data.size)] = _1532
                require return_data.size >= _1508 + (32 * _1532) + 32
                mem[_1484 + ceil32(return_data.size) + 32 len 32 * _1532] = mem[_1484 + _1508 + 32 len 32 * _1532]
                require _1532 - 1 < _1532
                if not mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ext_call.return_data[0]
                if 9 * mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32] / mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
            mem[_769 + 64] = stor13
            require 2 < mem[_769]
            mem[_769 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_769 + 100] = _750 + _28
            mem[_769 + 132] = 64
            mem[_769 + 164] = mem[_769]
            idx = 0
            s = _769 + 32
            t = _769 + 196
            while idx < mem[_769]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _769 + (32 * mem[_769]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1483 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1507 = mem[_1483]
            require mem[_1483] <= test266151307()
            require _1483 + return_data.size > _1483 + mem[_1483] + 31
            _1531 = mem[_1483 + mem[_1483]]
            require mem[_1483 + mem[_1483]] <= test266151307()
            require (32 * mem[_1483 + mem[_1483]]) + 32 >= 0 and _1483 + ceil32(return_data.size) + (32 * mem[_1483 + mem[_1483]]) + 32 <= test266151307()
            mem[64] = _1483 + ceil32(return_data.size) + (32 * mem[_1483 + mem[_1483]]) + 32
            mem[_1483 + ceil32(return_data.size)] = _1531
            require return_data.size >= _1507 + (32 * _1531) + 32
            mem[_1483 + ceil32(return_data.size) + 32 len 32 * _1531] = mem[_1483 + _1507 + 32 len 32 * _1531]
            require _1531 - 1 < _1531
            if not mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0]
            if 9 * mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32] / mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
        _770 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_770 + 32 len 96] = call.data[calldata.size len 96]
        require 0 < mem[_770]
        mem[_770 + 32] = stor17
        require 1 < mem[_770]
        if stor13 == wantAddress:
            mem[_770 + 64] = wantAddress
            mem[_770 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_770 + 132] = _750 + _28
            mem[_770 + 164] = 64
            mem[_770 + 196] = mem[_770]
            idx = 0
            s = _770 + 32
            t = _770 + 228
            while idx < mem[_770]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _770 + (32 * mem[_770]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1486 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1510 = mem[_1486]
            require mem[_1486] <= test266151307()
            require _1486 + return_data.size > _1486 + mem[_1486] + 31
            _1534 = mem[_1486 + mem[_1486]]
            require mem[_1486 + mem[_1486]] <= test266151307()
            require (32 * mem[_1486 + mem[_1486]]) + 32 >= 0 and _1486 + ceil32(return_data.size) + (32 * mem[_1486 + mem[_1486]]) + 32 <= test266151307()
            mem[64] = _1486 + ceil32(return_data.size) + (32 * mem[_1486 + mem[_1486]]) + 32
            mem[_1486 + ceil32(return_data.size)] = _1534
            require return_data.size >= _1510 + (32 * _1534) + 32
            mem[_1486 + ceil32(return_data.size) + 32 len 32 * _1534] = mem[_1486 + _1510 + 32 len 32 * _1534]
            require _1534 - 1 < _1534
            if not mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0]
            if 9 * mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32] / mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
        mem[_770 + 64] = stor13
        require 2 < mem[_770]
        mem[_770 + 96] = wantAddress
        mem[_770 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_770 + 132] = _750 + _28
        mem[_770 + 164] = 64
        mem[_770 + 196] = mem[_770]
        idx = 0
        s = _770 + 32
        t = _770 + 228
        while idx < mem[_770]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _770 + (32 * mem[_770]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1485 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1509 = mem[_1485]
        require mem[_1485] <= test266151307()
        require _1485 + return_data.size > _1485 + mem[_1485] + 31
        _1533 = mem[_1485 + mem[_1485]]
        require mem[_1485 + mem[_1485]] <= test266151307()
        require (32 * mem[_1485 + mem[_1485]]) + 32 >= 0 and _1485 + ceil32(return_data.size) + (32 * mem[_1485 + mem[_1485]]) + 32 <= test266151307()
        mem[64] = _1485 + ceil32(return_data.size) + (32 * mem[_1485 + mem[_1485]]) + 32
        mem[_1485 + ceil32(return_data.size)] = _1533
        require return_data.size >= _1509 + (32 * _1533) + 32
        mem[_1485 + ceil32(return_data.size) + 32 len 32 * _1533] = mem[_1485 + _1509 + 32 len 32 * _1533]
        require _1533 - 1 < _1533
        if not mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0]
        if 9 * mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32] / mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9 * mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0])
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x907448ed with:
            gas gas_remaining wei
           args wantAddress, 2 * ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(6 * ceil32(return_data.size)) + 96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 100] = uint256(stor21.field_0)
    mem[(6 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(stor15))
    staticcall address(stor15).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor21.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 96
    require return_data.size >= 128
    _38 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor21.field_32)
    require uint32(stor21.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
    _40 = 0, mem[(6 * ceil32(return_data.size)) + 164 len 28]
    require 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] <= test266151307()
    require (6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
    _42 = mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]
    require mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96] <= test266151307()
    require ceil32(mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]) + 128 <= test266151307()
    mem[64] = (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]) + 128
    mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]
    require _40 + _42 + 32 <= return_data.size
    mem[(7 * ceil32(return_data.size)) + 128 len ceil32(_42)] = mem[(6 * ceil32(return_data.size)) + _40 + 128 len ceil32(_42)]
    if ceil32(_42) <= _42:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor17)
        staticcall stor17.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _743 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _747 = mem[_743]
        if mem[_743] + _38 < _38:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[_743] + _38:
            return (2 * ext_call.return_data[0])
        if stor13 == stor17:
            _759 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_759]
            mem[_759 + 32] = stor17
            require 1 < mem[_759]
            if stor13 == stor17:
                mem[_759 + 64] = wantAddress
                mem[_759 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_759 + 100] = _747 + _38
                mem[_759 + 132] = 64
                mem[_759 + 164] = mem[_759]
                idx = 0
                s = _759 + 32
                t = _759 + 196
                while idx < mem[_759]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _759 + (32 * mem[_759]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1464 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1488 = mem[_1464]
                require mem[_1464] <= test266151307()
                require _1464 + return_data.size > _1464 + mem[_1464] + 31
                _1512 = mem[_1464 + mem[_1464]]
                require mem[_1464 + mem[_1464]] <= test266151307()
                require (32 * mem[_1464 + mem[_1464]]) + 32 >= 0 and _1464 + ceil32(return_data.size) + (32 * mem[_1464 + mem[_1464]]) + 32 <= test266151307()
                mem[64] = _1464 + ceil32(return_data.size) + (32 * mem[_1464 + mem[_1464]]) + 32
                mem[_1464 + ceil32(return_data.size)] = _1512
                require return_data.size >= _1488 + (32 * _1512) + 32
                mem[_1464 + ceil32(return_data.size) + 32 len 32 * _1512] = mem[_1464 + _1488 + 32 len 32 * _1512]
                require _1512 - 1 < _1512
                if not mem[(32 * _1512 - 1) + _1464 + ceil32(return_data.size) + 32]:
                    return (2 * ext_call.return_data[0])
                if 9 * mem[(32 * _1512 - 1) + _1464 + ceil32(return_data.size) + 32] / mem[(32 * _1512 - 1) + _1464 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 9 * mem[(32 * _1512 - 1) + _1464 + ceil32(return_data.size) + 32] / 10 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1512 - 1) + _1464 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
            mem[_759 + 64] = stor13
            require 2 < mem[_759]
            mem[_759 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_759 + 100] = _747 + _38
            mem[_759 + 132] = 64
            mem[_759 + 164] = mem[_759]
            idx = 0
            s = _759 + 32
            t = _759 + 196
            while idx < mem[_759]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _759 + (32 * mem[_759]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1463 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1487 = mem[_1463]
            require mem[_1463] <= test266151307()
            require _1463 + return_data.size > _1463 + mem[_1463] + 31
            _1511 = mem[_1463 + mem[_1463]]
            require mem[_1463 + mem[_1463]] <= test266151307()
            require (32 * mem[_1463 + mem[_1463]]) + 32 >= 0 and _1463 + ceil32(return_data.size) + (32 * mem[_1463 + mem[_1463]]) + 32 <= test266151307()
            mem[64] = _1463 + ceil32(return_data.size) + (32 * mem[_1463 + mem[_1463]]) + 32
            mem[_1463 + ceil32(return_data.size)] = _1511
            require return_data.size >= _1487 + (32 * _1511) + 32
            mem[_1463 + ceil32(return_data.size) + 32 len 32 * _1511] = mem[_1463 + _1487 + 32 len 32 * _1511]
            require _1511 - 1 < _1511
            if not mem[(32 * _1511 - 1) + _1463 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0])
            if 9 * mem[(32 * _1511 - 1) + _1463 + ceil32(return_data.size) + 32] / mem[(32 * _1511 - 1) + _1463 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1511 - 1) + _1463 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1511 - 1) + _1463 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
        if stor13 == wantAddress:
            _763 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_763]
            mem[_763 + 32] = stor17
            require 1 < mem[_763]
            if stor13 == wantAddress:
                mem[_763 + 64] = wantAddress
                mem[_763 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_763 + 100] = _747 + _38
                mem[_763 + 132] = 64
                mem[_763 + 164] = mem[_763]
                idx = 0
                s = _763 + 32
                t = _763 + 196
                while idx < mem[_763]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _763 + (32 * mem[_763]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1466 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1490 = mem[_1466]
                require mem[_1466] <= test266151307()
                require _1466 + return_data.size > _1466 + mem[_1466] + 31
                _1514 = mem[_1466 + mem[_1466]]
                require mem[_1466 + mem[_1466]] <= test266151307()
                require (32 * mem[_1466 + mem[_1466]]) + 32 >= 0 and _1466 + ceil32(return_data.size) + (32 * mem[_1466 + mem[_1466]]) + 32 <= test266151307()
                mem[64] = _1466 + ceil32(return_data.size) + (32 * mem[_1466 + mem[_1466]]) + 32
                mem[_1466 + ceil32(return_data.size)] = _1514
                require return_data.size >= _1490 + (32 * _1514) + 32
                mem[_1466 + ceil32(return_data.size) + 32 len 32 * _1514] = mem[_1466 + _1490 + 32 len 32 * _1514]
                require _1514 - 1 < _1514
                if not mem[(32 * _1514 - 1) + _1466 + ceil32(return_data.size) + 32]:
                    return (2 * ext_call.return_data[0])
                if 9 * mem[(32 * _1514 - 1) + _1466 + ceil32(return_data.size) + 32] / mem[(32 * _1514 - 1) + _1466 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 9 * mem[(32 * _1514 - 1) + _1466 + ceil32(return_data.size) + 32] / 10 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1514 - 1) + _1466 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
            mem[_763 + 64] = stor13
            require 2 < mem[_763]
            mem[_763 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_763 + 100] = _747 + _38
            mem[_763 + 132] = 64
            mem[_763 + 164] = mem[_763]
            idx = 0
            s = _763 + 32
            t = _763 + 196
            while idx < mem[_763]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _763 + (32 * mem[_763]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1465 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1489 = mem[_1465]
            require mem[_1465] <= test266151307()
            require _1465 + return_data.size > _1465 + mem[_1465] + 31
            _1513 = mem[_1465 + mem[_1465]]
            require mem[_1465 + mem[_1465]] <= test266151307()
            require (32 * mem[_1465 + mem[_1465]]) + 32 >= 0 and _1465 + ceil32(return_data.size) + (32 * mem[_1465 + mem[_1465]]) + 32 <= test266151307()
            mem[64] = _1465 + ceil32(return_data.size) + (32 * mem[_1465 + mem[_1465]]) + 32
            mem[_1465 + ceil32(return_data.size)] = _1513
            require return_data.size >= _1489 + (32 * _1513) + 32
            mem[_1465 + ceil32(return_data.size) + 32 len 32 * _1513] = mem[_1465 + _1489 + 32 len 32 * _1513]
            require _1513 - 1 < _1513
            if not mem[(32 * _1513 - 1) + _1465 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0])
            if 9 * mem[(32 * _1513 - 1) + _1465 + ceil32(return_data.size) + 32] / mem[(32 * _1513 - 1) + _1465 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1513 - 1) + _1465 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1513 - 1) + _1465 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
        _764 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_764 + 32 len 96] = call.data[calldata.size len 96]
        require 0 < mem[_764]
        mem[_764 + 32] = stor17
        require 1 < mem[_764]
        if stor13 == wantAddress:
            mem[_764 + 64] = wantAddress
            mem[_764 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_764 + 132] = _747 + _38
            mem[_764 + 164] = 64
            mem[_764 + 196] = mem[_764]
            idx = 0
            s = _764 + 32
            t = _764 + 228
            while idx < mem[_764]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _764 + (32 * mem[_764]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1468 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1492 = mem[_1468]
            require mem[_1468] <= test266151307()
            require _1468 + return_data.size > _1468 + mem[_1468] + 31
            _1516 = mem[_1468 + mem[_1468]]
            require mem[_1468 + mem[_1468]] <= test266151307()
            require (32 * mem[_1468 + mem[_1468]]) + 32 >= 0 and _1468 + ceil32(return_data.size) + (32 * mem[_1468 + mem[_1468]]) + 32 <= test266151307()
            mem[64] = _1468 + ceil32(return_data.size) + (32 * mem[_1468 + mem[_1468]]) + 32
            mem[_1468 + ceil32(return_data.size)] = _1516
            require return_data.size >= _1492 + (32 * _1516) + 32
            mem[_1468 + ceil32(return_data.size) + 32 len 32 * _1516] = mem[_1468 + _1492 + 32 len 32 * _1516]
            require _1516 - 1 < _1516
            if not mem[(32 * _1516 - 1) + _1468 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0])
            if 9 * mem[(32 * _1516 - 1) + _1468 + ceil32(return_data.size) + 32] / mem[(32 * _1516 - 1) + _1468 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1516 - 1) + _1468 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1516 - 1) + _1468 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
        mem[_764 + 64] = stor13
        require 2 < mem[_764]
        mem[_764 + 96] = wantAddress
        mem[_764 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_764 + 132] = _747 + _38
        mem[_764 + 164] = 64
        mem[_764 + 196] = mem[_764]
        idx = 0
        s = _764 + 32
        t = _764 + 228
        while idx < mem[_764]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _764 + (32 * mem[_764]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1467 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1491 = mem[_1467]
        require mem[_1467] <= test266151307()
        require _1467 + return_data.size > _1467 + mem[_1467] + 31
        _1515 = mem[_1467 + mem[_1467]]
        require mem[_1467 + mem[_1467]] <= test266151307()
        require (32 * mem[_1467 + mem[_1467]]) + 32 >= 0 and _1467 + ceil32(return_data.size) + (32 * mem[_1467 + mem[_1467]]) + 32 <= test266151307()
        mem[64] = _1467 + ceil32(return_data.size) + (32 * mem[_1467 + mem[_1467]]) + 32
        mem[_1467 + ceil32(return_data.size)] = _1515
        require return_data.size >= _1491 + (32 * _1515) + 32
        mem[_1467 + ceil32(return_data.size) + 32 len 32 * _1515] = mem[_1467 + _1491 + 32 len 32 * _1515]
        require _1515 - 1 < _1515
        if not mem[(32 * _1515 - 1) + _1467 + ceil32(return_data.size) + 32]:
            return (2 * ext_call.return_data[0])
        if 9 * mem[(32 * _1515 - 1) + _1467 + ceil32(return_data.size) + 32] / mem[(32 * _1515 - 1) + _1467 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9 * mem[(32 * _1515 - 1) + _1467 + ceil32(return_data.size) + 32] / 10 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1515 - 1) + _1467 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
    mem[_42 + (7 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor17)
    staticcall stor17.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _744 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _748 = mem[_744]
    if mem[_744] + _38 < _38:
        revert with 0, 'SafeMath: addition overflow'
    if not mem[_744] + _38:
        return (2 * ext_call.return_data[0])
    if stor13 == stor17:
        _760 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_760]
        mem[_760 + 32] = stor17
        require 1 < mem[_760]
        if stor13 == stor17:
            mem[_760 + 64] = wantAddress
            mem[_760 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_760 + 100] = _748 + _38
            mem[_760 + 132] = 64
            mem[_760 + 164] = mem[_760]
            idx = 0
            s = _760 + 32
            t = _760 + 196
            while idx < mem[_760]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _760 + (32 * mem[_760]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1470 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1494 = mem[_1470]
            require mem[_1470] <= test266151307()
            require _1470 + return_data.size > _1470 + mem[_1470] + 31
            _1518 = mem[_1470 + mem[_1470]]
            require mem[_1470 + mem[_1470]] <= test266151307()
            require (32 * mem[_1470 + mem[_1470]]) + 32 >= 0 and _1470 + ceil32(return_data.size) + (32 * mem[_1470 + mem[_1470]]) + 32 <= test266151307()
            mem[64] = _1470 + ceil32(return_data.size) + (32 * mem[_1470 + mem[_1470]]) + 32
            mem[_1470 + ceil32(return_data.size)] = _1518
            require return_data.size >= _1494 + (32 * _1518) + 32
            mem[_1470 + ceil32(return_data.size) + 32 len 32 * _1518] = mem[_1470 + _1494 + 32 len 32 * _1518]
            require _1518 - 1 < _1518
            if not mem[(32 * _1518 - 1) + _1470 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0])
            if 9 * mem[(32 * _1518 - 1) + _1470 + ceil32(return_data.size) + 32] / mem[(32 * _1518 - 1) + _1470 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1518 - 1) + _1470 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1518 - 1) + _1470 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
        mem[_760 + 64] = stor13
        require 2 < mem[_760]
        mem[_760 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_760 + 100] = _748 + _38
        mem[_760 + 132] = 64
        mem[_760 + 164] = mem[_760]
        idx = 0
        s = _760 + 32
        t = _760 + 196
        while idx < mem[_760]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _760 + (32 * mem[_760]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1469 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1493 = mem[_1469]
        require mem[_1469] <= test266151307()
        require _1469 + return_data.size > _1469 + mem[_1469] + 31
        _1517 = mem[_1469 + mem[_1469]]
        require mem[_1469 + mem[_1469]] <= test266151307()
        require (32 * mem[_1469 + mem[_1469]]) + 32 >= 0 and _1469 + ceil32(return_data.size) + (32 * mem[_1469 + mem[_1469]]) + 32 <= test266151307()
        mem[64] = _1469 + ceil32(return_data.size) + (32 * mem[_1469 + mem[_1469]]) + 32
        mem[_1469 + ceil32(return_data.size)] = _1517
        require return_data.size >= _1493 + (32 * _1517) + 32
        mem[_1469 + ceil32(return_data.size) + 32 len 32 * _1517] = mem[_1469 + _1493 + 32 len 32 * _1517]
        require _1517 - 1 < _1517
        if not mem[(32 * _1517 - 1) + _1469 + ceil32(return_data.size) + 32]:
            return (2 * ext_call.return_data[0])
        if 9 * mem[(32 * _1517 - 1) + _1469 + ceil32(return_data.size) + 32] / mem[(32 * _1517 - 1) + _1469 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9 * mem[(32 * _1517 - 1) + _1469 + ceil32(return_data.size) + 32] / 10 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1517 - 1) + _1469 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
    if stor13 == wantAddress:
        _765 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_765]
        mem[_765 + 32] = stor17
        require 1 < mem[_765]
        if stor13 == wantAddress:
            mem[_765 + 64] = wantAddress
            mem[_765 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_765 + 100] = _748 + _38
            mem[_765 + 132] = 64
            mem[_765 + 164] = mem[_765]
            idx = 0
            s = _765 + 32
            t = _765 + 196
            while idx < mem[_765]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _765 + (32 * mem[_765]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1472 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1496 = mem[_1472]
            require mem[_1472] <= test266151307()
            require _1472 + return_data.size > _1472 + mem[_1472] + 31
            _1520 = mem[_1472 + mem[_1472]]
            require mem[_1472 + mem[_1472]] <= test266151307()
            require (32 * mem[_1472 + mem[_1472]]) + 32 >= 0 and _1472 + ceil32(return_data.size) + (32 * mem[_1472 + mem[_1472]]) + 32 <= test266151307()
            mem[64] = _1472 + ceil32(return_data.size) + (32 * mem[_1472 + mem[_1472]]) + 32
            mem[_1472 + ceil32(return_data.size)] = _1520
            require return_data.size >= _1496 + (32 * _1520) + 32
            mem[_1472 + ceil32(return_data.size) + 32 len 32 * _1520] = mem[_1472 + _1496 + 32 len 32 * _1520]
            require _1520 - 1 < _1520
            if not mem[(32 * _1520 - 1) + _1472 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0])
            if 9 * mem[(32 * _1520 - 1) + _1472 + ceil32(return_data.size) + 32] / mem[(32 * _1520 - 1) + _1472 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1520 - 1) + _1472 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1520 - 1) + _1472 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
        mem[_765 + 64] = stor13
        require 2 < mem[_765]
        mem[_765 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_765 + 100] = _748 + _38
        mem[_765 + 132] = 64
        mem[_765 + 164] = mem[_765]
        idx = 0
        s = _765 + 32
        t = _765 + 196
        while idx < mem[_765]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _765 + (32 * mem[_765]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1471 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1495 = mem[_1471]
        require mem[_1471] <= test266151307()
        require _1471 + return_data.size > _1471 + mem[_1471] + 31
        _1519 = mem[_1471 + mem[_1471]]
        require mem[_1471 + mem[_1471]] <= test266151307()
        require (32 * mem[_1471 + mem[_1471]]) + 32 >= 0 and _1471 + ceil32(return_data.size) + (32 * mem[_1471 + mem[_1471]]) + 32 <= test266151307()
        mem[64] = _1471 + ceil32(return_data.size) + (32 * mem[_1471 + mem[_1471]]) + 32
        mem[_1471 + ceil32(return_data.size)] = _1519
        require return_data.size >= _1495 + (32 * _1519) + 32
        mem[_1471 + ceil32(return_data.size) + 32 len 32 * _1519] = mem[_1471 + _1495 + 32 len 32 * _1519]
        require _1519 - 1 < _1519
        if not mem[(32 * _1519 - 1) + _1471 + ceil32(return_data.size) + 32]:
            return (2 * ext_call.return_data[0])
        if 9 * mem[(32 * _1519 - 1) + _1471 + ceil32(return_data.size) + 32] / mem[(32 * _1519 - 1) + _1471 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9 * mem[(32 * _1519 - 1) + _1471 + ceil32(return_data.size) + 32] / 10 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1519 - 1) + _1471 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
    _766 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_766 + 32 len 96] = call.data[calldata.size len 96]
    require 0 < mem[_766]
    mem[_766 + 32] = stor17
    require 1 < mem[_766]
    if stor13 == wantAddress:
        mem[_766 + 64] = wantAddress
        mem[_766 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_766 + 132] = _748 + _38
        mem[_766 + 164] = 64
        mem[_766 + 196] = mem[_766]
        idx = 0
        s = _766 + 32
        t = _766 + 228
        while idx < mem[_766]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _766 + (32 * mem[_766]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1474 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1498 = mem[_1474]
        require mem[_1474] <= test266151307()
        require _1474 + return_data.size > _1474 + mem[_1474] + 31
        _1522 = mem[_1474 + mem[_1474]]
        require mem[_1474 + mem[_1474]] <= test266151307()
        require (32 * mem[_1474 + mem[_1474]]) + 32 >= 0 and _1474 + ceil32(return_data.size) + (32 * mem[_1474 + mem[_1474]]) + 32 <= test266151307()
        mem[64] = _1474 + ceil32(return_data.size) + (32 * mem[_1474 + mem[_1474]]) + 32
        mem[_1474 + ceil32(return_data.size)] = _1522
        require return_data.size >= _1498 + (32 * _1522) + 32
        mem[_1474 + ceil32(return_data.size) + 32 len 32 * _1522] = mem[_1474 + _1498 + 32 len 32 * _1522]
        require _1522 - 1 < _1522
        if not mem[(32 * _1522 - 1) + _1474 + ceil32(return_data.size) + 32]:
            return (2 * ext_call.return_data[0])
        if 9 * mem[(32 * _1522 - 1) + _1474 + ceil32(return_data.size) + 32] / mem[(32 * _1522 - 1) + _1474 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9 * mem[(32 * _1522 - 1) + _1474 + ceil32(return_data.size) + 32] / 10 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1522 - 1) + _1474 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
    mem[_766 + 64] = stor13
    require 2 < mem[_766]
    mem[_766 + 96] = wantAddress
    mem[_766 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_766 + 132] = _748 + _38
    mem[_766 + 164] = 64
    mem[_766 + 196] = mem[_766]
    idx = 0
    s = _766 + 32
    t = _766 + 228
    while idx < mem[_766]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor11)
    staticcall stor11.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _766 + (32 * mem[_766]) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1473 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1497 = mem[_1473]
    require mem[_1473] <= test266151307()
    require _1473 + return_data.size > _1473 + mem[_1473] + 31
    _1521 = mem[_1473 + mem[_1473]]
    require mem[_1473 + mem[_1473]] <= test266151307()
    require (32 * mem[_1473 + mem[_1473]]) + 32 >= 0 and _1473 + ceil32(return_data.size) + (32 * mem[_1473 + mem[_1473]]) + 32 <= test266151307()
    mem[64] = _1473 + ceil32(return_data.size) + (32 * mem[_1473 + mem[_1473]]) + 32
    mem[_1473 + ceil32(return_data.size)] = _1521
    require return_data.size >= _1497 + (32 * _1521) + 32
    mem[_1473 + ceil32(return_data.size) + 32 len 32 * _1521] = mem[_1473 + _1497 + 32 len 32 * _1521]
    require _1521 - 1 < _1521
    if not mem[(32 * _1521 - 1) + _1473 + ceil32(return_data.size) + 32]:
        return (2 * ext_call.return_data[0])
    if 9 * mem[(32 * _1521 - 1) + _1473 + ceil32(return_data.size) + 32] / mem[(32 * _1521 - 1) + _1473 + ceil32(return_data.size) + 32] != 9:
        revert with 0, 'SafeMath: multiplication overflow'
    if 9 * mem[(32 * _1521 - 1) + _1473 + ceil32(return_data.size) + 32] / 10 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((9 * mem[(32 * _1521 - 1) + _1473 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]))
}

function isActive() payable {
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[160]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[192]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[224]
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[256]
    if ext_call.return_data[64] > 0:
        return (ext_call.return_data[64] > 0)
    mem[ceil32(return_data.size) + 388] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor15))
    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor21.field_0), this.address
    mem[(2 * ceil32(return_data.size)) + 384 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(4 * ceil32(return_data.size)) + 388] = this.address
    require ext_code.size(stor16)
    staticcall stor16.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[(6 * ceil32(return_data.size)) + 384] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 388] = uint256(stor21.field_0)
        mem[(6 * ceil32(return_data.size)) + 420] = this.address
        require ext_code.size(address(stor15))
        staticcall address(stor15).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args uint256(stor21.field_0), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 384
        require return_data.size >= 128
        _44 = mem[(6 * ceil32(return_data.size)) + 384 len 4], Mask(224, 0, stor21.field_32)
        require uint32(stor21.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
        _49 = 0, mem[(6 * ceil32(return_data.size)) + 452 len 28]
        require 0, mem[(6 * ceil32(return_data.size)) + 452 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 452 len 28] + 415 < (6 * ceil32(return_data.size)) + return_data.size + 384
        _51 = mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 452 len 28] + 384]
        require mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 452 len 28] + 384] <= test266151307()
        require ceil32(mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 452 len 28] + 384]) + 32 >= 0 and (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 452 len 28] + 384]) + 416 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 452 len 28] + 384]) + 416
        mem[(7 * ceil32(return_data.size)) + 384] = _51
        require _49 + _51 + 32 <= return_data.size
        mem[(7 * ceil32(return_data.size)) + 416 len ceil32(_51)] = mem[(6 * ceil32(return_data.size)) + _49 + 416 len ceil32(_51)]
        if ceil32(_51) <= _51:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _761 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _765 = mem[_761]
            if mem[_761] + _44 < _44:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_761] + _44:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] > 0)
            if stor13 == stor17:
                _777 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_777]
                mem[_777 + 32] = stor17
                require 1 < mem[_777]
                if stor13 == stor17:
                    mem[_777 + 64] = wantAddress
                    mem[_777 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_777 + 100] = _765 + _44
                    mem[_777 + 132] = 64
                    mem[_777 + 164] = mem[_777]
                    idx = 0
                    s = _777 + 32
                    t = _777 + 196
                    while idx < mem[_777]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _777 + (32 * mem[_777]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1492 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1516 = mem[_1492]
                    require mem[_1492] <= test266151307()
                    require _1492 + return_data.size > _1492 + mem[_1492] + 31
                    _1540 = mem[_1492 + mem[_1492]]
                    require mem[_1492 + mem[_1492]] <= test266151307()
                    require (32 * mem[_1492 + mem[_1492]]) + 32 >= 0 and _1492 + ceil32(return_data.size) + (32 * mem[_1492 + mem[_1492]]) + 32 <= test266151307()
                    mem[64] = _1492 + ceil32(return_data.size) + (32 * mem[_1492 + mem[_1492]]) + 32
                    mem[_1492 + ceil32(return_data.size)] = _1540
                    require return_data.size >= _1516 + (32 * _1540) + 32
                    mem[_1492 + ceil32(return_data.size) + 32 len 32 * _1540] = mem[_1492 + _1516 + 32 len 32 * _1540]
                    require _1540 - 1 < _1540
                    if not mem[(32 * _1540 - 1) + _1492 + ceil32(return_data.size) + 32]:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (ext_call.return_data[0] > 0)
                    if 9 * mem[(32 * _1540 - 1) + _1492 + ceil32(return_data.size) + 32] / mem[(32 * _1540 - 1) + _1492 + ceil32(return_data.size) + 32] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (9 * mem[(32 * _1540 - 1) + _1492 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((9 * mem[(32 * _1540 - 1) + _1492 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
                mem[_777 + 64] = stor13
                require 2 < mem[_777]
                mem[_777 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_777 + 100] = _765 + _44
                mem[_777 + 132] = 64
                mem[_777 + 164] = mem[_777]
                idx = 0
                s = _777 + 32
                t = _777 + 196
                while idx < mem[_777]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _777 + (32 * mem[_777]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1491 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1515 = mem[_1491]
                require mem[_1491] <= test266151307()
                require _1491 + return_data.size > _1491 + mem[_1491] + 31
                _1539 = mem[_1491 + mem[_1491]]
                require mem[_1491 + mem[_1491]] <= test266151307()
                require (32 * mem[_1491 + mem[_1491]]) + 32 >= 0 and _1491 + ceil32(return_data.size) + (32 * mem[_1491 + mem[_1491]]) + 32 <= test266151307()
                mem[64] = _1491 + ceil32(return_data.size) + (32 * mem[_1491 + mem[_1491]]) + 32
                mem[_1491 + ceil32(return_data.size)] = _1539
                require return_data.size >= _1515 + (32 * _1539) + 32
                mem[_1491 + ceil32(return_data.size) + 32 len 32 * _1539] = mem[_1491 + _1515 + 32 len 32 * _1539]
                require _1539 - 1 < _1539
                if not mem[(32 * _1539 - 1) + _1491 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] > 0)
                if 9 * mem[(32 * _1539 - 1) + _1491 + ceil32(return_data.size) + 32] / mem[(32 * _1539 - 1) + _1491 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1539 - 1) + _1491 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1539 - 1) + _1491 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
            if stor13 == wantAddress:
                _783 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_783]
                mem[_783 + 32] = stor17
                require 1 < mem[_783]
                if stor13 == wantAddress:
                    mem[_783 + 64] = wantAddress
                    mem[_783 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_783 + 100] = _765 + _44
                    mem[_783 + 132] = 64
                    mem[_783 + 164] = mem[_783]
                    idx = 0
                    s = _783 + 32
                    t = _783 + 196
                    while idx < mem[_783]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _783 + (32 * mem[_783]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1494 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1518 = mem[_1494]
                    require mem[_1494] <= test266151307()
                    require _1494 + return_data.size > _1494 + mem[_1494] + 31
                    _1542 = mem[_1494 + mem[_1494]]
                    require mem[_1494 + mem[_1494]] <= test266151307()
                    require (32 * mem[_1494 + mem[_1494]]) + 32 >= 0 and _1494 + ceil32(return_data.size) + (32 * mem[_1494 + mem[_1494]]) + 32 <= test266151307()
                    mem[64] = _1494 + ceil32(return_data.size) + (32 * mem[_1494 + mem[_1494]]) + 32
                    mem[_1494 + ceil32(return_data.size)] = _1542
                    require return_data.size >= _1518 + (32 * _1542) + 32
                    mem[_1494 + ceil32(return_data.size) + 32 len 32 * _1542] = mem[_1494 + _1518 + 32 len 32 * _1542]
                    require _1542 - 1 < _1542
                    if not mem[(32 * _1542 - 1) + _1494 + ceil32(return_data.size) + 32]:
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return (ext_call.return_data[0] > 0)
                    if 9 * mem[(32 * _1542 - 1) + _1494 + ceil32(return_data.size) + 32] / mem[(32 * _1542 - 1) + _1494 + ceil32(return_data.size) + 32] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (9 * mem[(32 * _1542 - 1) + _1494 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((9 * mem[(32 * _1542 - 1) + _1494 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
                mem[_783 + 64] = stor13
                require 2 < mem[_783]
                mem[_783 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_783 + 100] = _765 + _44
                mem[_783 + 132] = 64
                mem[_783 + 164] = mem[_783]
                idx = 0
                s = _783 + 32
                t = _783 + 196
                while idx < mem[_783]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _783 + (32 * mem[_783]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1493 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1517 = mem[_1493]
                require mem[_1493] <= test266151307()
                require _1493 + return_data.size > _1493 + mem[_1493] + 31
                _1541 = mem[_1493 + mem[_1493]]
                require mem[_1493 + mem[_1493]] <= test266151307()
                require (32 * mem[_1493 + mem[_1493]]) + 32 >= 0 and _1493 + ceil32(return_data.size) + (32 * mem[_1493 + mem[_1493]]) + 32 <= test266151307()
                mem[64] = _1493 + ceil32(return_data.size) + (32 * mem[_1493 + mem[_1493]]) + 32
                mem[_1493 + ceil32(return_data.size)] = _1541
                require return_data.size >= _1517 + (32 * _1541) + 32
                mem[_1493 + ceil32(return_data.size) + 32 len 32 * _1541] = mem[_1493 + _1517 + 32 len 32 * _1541]
                require _1541 - 1 < _1541
                if not mem[(32 * _1541 - 1) + _1493 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] > 0)
                if 9 * mem[(32 * _1541 - 1) + _1493 + ceil32(return_data.size) + 32] / mem[(32 * _1541 - 1) + _1493 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1541 - 1) + _1493 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1541 - 1) + _1493 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
            _784 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[_784 + 32 len 96] = call.data[calldata.size len 96]
            require 0 < mem[_784]
            mem[_784 + 32] = stor17
            require 1 < mem[_784]
            if stor13 == wantAddress:
                mem[_784 + 64] = wantAddress
                mem[_784 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_784 + 132] = _765 + _44
                mem[_784 + 164] = 64
                mem[_784 + 196] = mem[_784]
                idx = 0
                s = _784 + 32
                t = _784 + 228
                while idx < mem[_784]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _784 + (32 * mem[_784]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1496 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1520 = mem[_1496]
                require mem[_1496] <= test266151307()
                require _1496 + return_data.size > _1496 + mem[_1496] + 31
                _1544 = mem[_1496 + mem[_1496]]
                require mem[_1496 + mem[_1496]] <= test266151307()
                require (32 * mem[_1496 + mem[_1496]]) + 32 >= 0 and _1496 + ceil32(return_data.size) + (32 * mem[_1496 + mem[_1496]]) + 32 <= test266151307()
                mem[64] = _1496 + ceil32(return_data.size) + (32 * mem[_1496 + mem[_1496]]) + 32
                mem[_1496 + ceil32(return_data.size)] = _1544
                require return_data.size >= _1520 + (32 * _1544) + 32
                mem[_1496 + ceil32(return_data.size) + 32 len 32 * _1544] = mem[_1496 + _1520 + 32 len 32 * _1544]
                require _1544 - 1 < _1544
                if not mem[(32 * _1544 - 1) + _1496 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] > 0)
                if 9 * mem[(32 * _1544 - 1) + _1496 + ceil32(return_data.size) + 32] / mem[(32 * _1544 - 1) + _1496 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1544 - 1) + _1496 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1544 - 1) + _1496 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
            mem[_784 + 64] = stor13
            require 2 < mem[_784]
            mem[_784 + 96] = wantAddress
            mem[_784 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_784 + 132] = _765 + _44
            mem[_784 + 164] = 64
            mem[_784 + 196] = mem[_784]
            idx = 0
            s = _784 + 32
            t = _784 + 228
            while idx < mem[_784]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _784 + (32 * mem[_784]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1495 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1519 = mem[_1495]
            require mem[_1495] <= test266151307()
            require _1495 + return_data.size > _1495 + mem[_1495] + 31
            _1543 = mem[_1495 + mem[_1495]]
            require mem[_1495 + mem[_1495]] <= test266151307()
            require (32 * mem[_1495 + mem[_1495]]) + 32 >= 0 and _1495 + ceil32(return_data.size) + (32 * mem[_1495 + mem[_1495]]) + 32 <= test266151307()
            mem[64] = _1495 + ceil32(return_data.size) + (32 * mem[_1495 + mem[_1495]]) + 32
            mem[_1495 + ceil32(return_data.size)] = _1543
            require return_data.size >= _1519 + (32 * _1543) + 32
            mem[_1495 + ceil32(return_data.size) + 32 len 32 * _1543] = mem[_1495 + _1519 + 32 len 32 * _1543]
            require _1543 - 1 < _1543
            if not mem[(32 * _1543 - 1) + _1495 + ceil32(return_data.size) + 32]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] > 0)
            if 9 * mem[(32 * _1543 - 1) + _1495 + ceil32(return_data.size) + 32] / mem[(32 * _1543 - 1) + _1495 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _1543 - 1) + _1495 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1543 - 1) + _1495 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
        mem[_51 + (7 * ceil32(return_data.size)) + 416] = 0
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor17)
        staticcall stor17.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _762 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _766 = mem[_762]
        if mem[_762] + _44 < _44:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[_762] + _44:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] > 0)
        if stor13 == stor17:
            _778 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_778]
            mem[_778 + 32] = stor17
            require 1 < mem[_778]
            if stor13 == stor17:
                mem[_778 + 64] = wantAddress
                mem[_778 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_778 + 100] = _766 + _44
                mem[_778 + 132] = 64
                mem[_778 + 164] = mem[_778]
                idx = 0
                s = _778 + 32
                t = _778 + 196
                while idx < mem[_778]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _778 + (32 * mem[_778]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1498 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1522 = mem[_1498]
                require mem[_1498] <= test266151307()
                require _1498 + return_data.size > _1498 + mem[_1498] + 31
                _1546 = mem[_1498 + mem[_1498]]
                require mem[_1498 + mem[_1498]] <= test266151307()
                require (32 * mem[_1498 + mem[_1498]]) + 32 >= 0 and _1498 + ceil32(return_data.size) + (32 * mem[_1498 + mem[_1498]]) + 32 <= test266151307()
                mem[64] = _1498 + ceil32(return_data.size) + (32 * mem[_1498 + mem[_1498]]) + 32
                mem[_1498 + ceil32(return_data.size)] = _1546
                require return_data.size >= _1522 + (32 * _1546) + 32
                mem[_1498 + ceil32(return_data.size) + 32 len 32 * _1546] = mem[_1498 + _1522 + 32 len 32 * _1546]
                require _1546 - 1 < _1546
                if not mem[(32 * _1546 - 1) + _1498 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] > 0)
                if 9 * mem[(32 * _1546 - 1) + _1498 + ceil32(return_data.size) + 32] / mem[(32 * _1546 - 1) + _1498 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1546 - 1) + _1498 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1546 - 1) + _1498 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
            mem[_778 + 64] = stor13
            require 2 < mem[_778]
            mem[_778 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_778 + 100] = _766 + _44
            mem[_778 + 132] = 64
            mem[_778 + 164] = mem[_778]
            idx = 0
            s = _778 + 32
            t = _778 + 196
            while idx < mem[_778]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _778 + (32 * mem[_778]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1497 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1521 = mem[_1497]
            require mem[_1497] <= test266151307()
            require _1497 + return_data.size > _1497 + mem[_1497] + 31
            _1545 = mem[_1497 + mem[_1497]]
            require mem[_1497 + mem[_1497]] <= test266151307()
            require (32 * mem[_1497 + mem[_1497]]) + 32 >= 0 and _1497 + ceil32(return_data.size) + (32 * mem[_1497 + mem[_1497]]) + 32 <= test266151307()
            mem[64] = _1497 + ceil32(return_data.size) + (32 * mem[_1497 + mem[_1497]]) + 32
            mem[_1497 + ceil32(return_data.size)] = _1545
            require return_data.size >= _1521 + (32 * _1545) + 32
            mem[_1497 + ceil32(return_data.size) + 32 len 32 * _1545] = mem[_1497 + _1521 + 32 len 32 * _1545]
            require _1545 - 1 < _1545
            if not mem[(32 * _1545 - 1) + _1497 + ceil32(return_data.size) + 32]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] > 0)
            if 9 * mem[(32 * _1545 - 1) + _1497 + ceil32(return_data.size) + 32] / mem[(32 * _1545 - 1) + _1497 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _1545 - 1) + _1497 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1545 - 1) + _1497 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
        if stor13 == wantAddress:
            _785 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_785]
            mem[_785 + 32] = stor17
            require 1 < mem[_785]
            if stor13 == wantAddress:
                mem[_785 + 64] = wantAddress
                mem[_785 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_785 + 100] = _766 + _44
                mem[_785 + 132] = 64
                mem[_785 + 164] = mem[_785]
                idx = 0
                s = _785 + 32
                t = _785 + 196
                while idx < mem[_785]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _785 + (32 * mem[_785]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1500 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1524 = mem[_1500]
                require mem[_1500] <= test266151307()
                require _1500 + return_data.size > _1500 + mem[_1500] + 31
                _1548 = mem[_1500 + mem[_1500]]
                require mem[_1500 + mem[_1500]] <= test266151307()
                require (32 * mem[_1500 + mem[_1500]]) + 32 >= 0 and _1500 + ceil32(return_data.size) + (32 * mem[_1500 + mem[_1500]]) + 32 <= test266151307()
                mem[64] = _1500 + ceil32(return_data.size) + (32 * mem[_1500 + mem[_1500]]) + 32
                mem[_1500 + ceil32(return_data.size)] = _1548
                require return_data.size >= _1524 + (32 * _1548) + 32
                mem[_1500 + ceil32(return_data.size) + 32 len 32 * _1548] = mem[_1500 + _1524 + 32 len 32 * _1548]
                require _1548 - 1 < _1548
                if not mem[(32 * _1548 - 1) + _1500 + ceil32(return_data.size) + 32]:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return (ext_call.return_data[0] > 0)
                if 9 * mem[(32 * _1548 - 1) + _1500 + ceil32(return_data.size) + 32] / mem[(32 * _1548 - 1) + _1500 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (9 * mem[(32 * _1548 - 1) + _1500 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1548 - 1) + _1500 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
            mem[_785 + 64] = stor13
            require 2 < mem[_785]
            mem[_785 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_785 + 100] = _766 + _44
            mem[_785 + 132] = 64
            mem[_785 + 164] = mem[_785]
            idx = 0
            s = _785 + 32
            t = _785 + 196
            while idx < mem[_785]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _785 + (32 * mem[_785]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1499 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1523 = mem[_1499]
            require mem[_1499] <= test266151307()
            require _1499 + return_data.size > _1499 + mem[_1499] + 31
            _1547 = mem[_1499 + mem[_1499]]
            require mem[_1499 + mem[_1499]] <= test266151307()
            require (32 * mem[_1499 + mem[_1499]]) + 32 >= 0 and _1499 + ceil32(return_data.size) + (32 * mem[_1499 + mem[_1499]]) + 32 <= test266151307()
            mem[64] = _1499 + ceil32(return_data.size) + (32 * mem[_1499 + mem[_1499]]) + 32
            mem[_1499 + ceil32(return_data.size)] = _1547
            require return_data.size >= _1523 + (32 * _1547) + 32
            mem[_1499 + ceil32(return_data.size) + 32 len 32 * _1547] = mem[_1499 + _1523 + 32 len 32 * _1547]
            require _1547 - 1 < _1547
            if not mem[(32 * _1547 - 1) + _1499 + ceil32(return_data.size) + 32]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] > 0)
            if 9 * mem[(32 * _1547 - 1) + _1499 + ceil32(return_data.size) + 32] / mem[(32 * _1547 - 1) + _1499 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _1547 - 1) + _1499 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1547 - 1) + _1499 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
        _786 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_786 + 32 len 96] = call.data[calldata.size len 96]
        require 0 < mem[_786]
        mem[_786 + 32] = stor17
        require 1 < mem[_786]
        if stor13 == wantAddress:
            mem[_786 + 64] = wantAddress
            mem[_786 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_786 + 132] = _766 + _44
            mem[_786 + 164] = 64
            mem[_786 + 196] = mem[_786]
            idx = 0
            s = _786 + 32
            t = _786 + 228
            while idx < mem[_786]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _786 + (32 * mem[_786]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1502 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1526 = mem[_1502]
            require mem[_1502] <= test266151307()
            require _1502 + return_data.size > _1502 + mem[_1502] + 31
            _1550 = mem[_1502 + mem[_1502]]
            require mem[_1502 + mem[_1502]] <= test266151307()
            require (32 * mem[_1502 + mem[_1502]]) + 32 >= 0 and _1502 + ceil32(return_data.size) + (32 * mem[_1502 + mem[_1502]]) + 32 <= test266151307()
            mem[64] = _1502 + ceil32(return_data.size) + (32 * mem[_1502 + mem[_1502]]) + 32
            mem[_1502 + ceil32(return_data.size)] = _1550
            require return_data.size >= _1526 + (32 * _1550) + 32
            mem[_1502 + ceil32(return_data.size) + 32 len 32 * _1550] = mem[_1502 + _1526 + 32 len 32 * _1550]
            require _1550 - 1 < _1550
            if not mem[(32 * _1550 - 1) + _1502 + ceil32(return_data.size) + 32]:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return (ext_call.return_data[0] > 0)
            if 9 * mem[(32 * _1550 - 1) + _1502 + ceil32(return_data.size) + 32] / mem[(32 * _1550 - 1) + _1502 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if (9 * mem[(32 * _1550 - 1) + _1502 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1550 - 1) + _1502 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
        mem[_786 + 64] = stor13
        require 2 < mem[_786]
        mem[_786 + 96] = wantAddress
        mem[_786 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_786 + 132] = _766 + _44
        mem[_786 + 164] = 64
        mem[_786 + 196] = mem[_786]
        idx = 0
        s = _786 + 32
        t = _786 + 228
        while idx < mem[_786]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _786 + (32 * mem[_786]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1501 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1525 = mem[_1501]
        require mem[_1501] <= test266151307()
        require _1501 + return_data.size > _1501 + mem[_1501] + 31
        _1549 = mem[_1501 + mem[_1501]]
        require mem[_1501 + mem[_1501]] <= test266151307()
        require (32 * mem[_1501 + mem[_1501]]) + 32 >= 0 and _1501 + ceil32(return_data.size) + (32 * mem[_1501 + mem[_1501]]) + 32 <= test266151307()
        mem[64] = _1501 + ceil32(return_data.size) + (32 * mem[_1501 + mem[_1501]]) + 32
        mem[_1501 + ceil32(return_data.size)] = _1549
        require return_data.size >= _1525 + (32 * _1549) + 32
        mem[_1501 + ceil32(return_data.size) + 32 len 32 * _1549] = mem[_1501 + _1525 + 32 len 32 * _1549]
        require _1549 - 1 < _1549
        if not mem[(32 * _1549 - 1) + _1501 + ceil32(return_data.size) + 32]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] > 0)
        if 9 * mem[(32 * _1549 - 1) + _1501 + ceil32(return_data.size) + 32] / mem[(32 * _1549 - 1) + _1501 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if (9 * mem[(32 * _1549 - 1) + _1501 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1549 - 1) + _1501 + ceil32(return_data.size) + 32] / 10) + ext_call.return_data[0] > 0)
    require ext_code.size(poolAddress)
    staticcall poolAddress.0x907448ed with:
            gas gas_remaining wei
           args wantAddress, 2 * ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 384 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[(7 * ceil32(return_data.size)) + 384] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 388] = uint256(stor21.field_0)
    mem[(7 * ceil32(return_data.size)) + 420] = this.address
    require ext_code.size(address(stor15))
    staticcall address(stor15).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor21.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 384
    require return_data.size >= 128
    _54 = mem[(7 * ceil32(return_data.size)) + 384 len 4], Mask(224, 0, stor21.field_32)
    require uint32(stor21.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
    _56 = 0, mem[(7 * ceil32(return_data.size)) + 452 len 28]
    require 0, mem[(7 * ceil32(return_data.size)) + 452 len 28] <= test266151307()
    require (7 * ceil32(return_data.size)) + 0, mem[(7 * ceil32(return_data.size)) + 452 len 28] + 415 < (7 * ceil32(return_data.size)) + return_data.size + 384
    _58 = mem[(7 * ceil32(return_data.size)) + 0, mem[(7 * ceil32(return_data.size)) + 452 len 28] + 384]
    require mem[(7 * ceil32(return_data.size)) + 0, mem[(7 * ceil32(return_data.size)) + 452 len 28] + 384] <= test266151307()
    require ceil32(mem[(7 * ceil32(return_data.size)) + 0, mem[(7 * ceil32(return_data.size)) + 452 len 28] + 384]) + 32 >= 0 and (8 * ceil32(return_data.size)) + ceil32(mem[(7 * ceil32(return_data.size)) + 0, mem[(7 * ceil32(return_data.size)) + 452 len 28] + 384]) + 416 <= test266151307()
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(mem[(7 * ceil32(return_data.size)) + 0, mem[(7 * ceil32(return_data.size)) + 452 len 28] + 384]) + 416
    mem[(8 * ceil32(return_data.size)) + 384] = _58
    require _56 + _58 + 32 <= return_data.size
    mem[(8 * ceil32(return_data.size)) + 416 len ceil32(_58)] = mem[(7 * ceil32(return_data.size)) + _56 + 416 len ceil32(_58)]
    if ceil32(_58) <= _58:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor17)
        staticcall stor17.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _759 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _763 = mem[_759]
        if mem[_759] + _54 < _54:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[_759] + _54:
            return (2 * ext_call.return_data[0] > 0)
        if stor13 == stor17:
            _775 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_775]
            mem[_775 + 32] = stor17
            require 1 < mem[_775]
            if stor13 == stor17:
                mem[_775 + 64] = wantAddress
                mem[_775 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_775 + 100] = _763 + _54
                mem[_775 + 132] = 64
                mem[_775 + 164] = mem[_775]
                idx = 0
                s = _775 + 32
                t = _775 + 196
                while idx < mem[_775]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _775 + (32 * mem[_775]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1480 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1504 = mem[_1480]
                require mem[_1480] <= test266151307()
                require _1480 + return_data.size > _1480 + mem[_1480] + 31
                _1528 = mem[_1480 + mem[_1480]]
                require mem[_1480 + mem[_1480]] <= test266151307()
                require (32 * mem[_1480 + mem[_1480]]) + 32 >= 0 and _1480 + ceil32(return_data.size) + (32 * mem[_1480 + mem[_1480]]) + 32 <= test266151307()
                mem[64] = _1480 + ceil32(return_data.size) + (32 * mem[_1480 + mem[_1480]]) + 32
                mem[_1480 + ceil32(return_data.size)] = _1528
                require return_data.size >= _1504 + (32 * _1528) + 32
                mem[_1480 + ceil32(return_data.size) + 32 len 32 * _1528] = mem[_1480 + _1504 + 32 len 32 * _1528]
                require _1528 - 1 < _1528
                if not mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32]:
                    return (2 * ext_call.return_data[0] > 0)
                if 9 * mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32] / mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 9 * mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32] / 10 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1528 - 1) + _1480 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
            mem[_775 + 64] = stor13
            require 2 < mem[_775]
            mem[_775 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_775 + 100] = _763 + _54
            mem[_775 + 132] = 64
            mem[_775 + 164] = mem[_775]
            idx = 0
            s = _775 + 32
            t = _775 + 196
            while idx < mem[_775]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _775 + (32 * mem[_775]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1479 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1503 = mem[_1479]
            require mem[_1479] <= test266151307()
            require _1479 + return_data.size > _1479 + mem[_1479] + 31
            _1527 = mem[_1479 + mem[_1479]]
            require mem[_1479 + mem[_1479]] <= test266151307()
            require (32 * mem[_1479 + mem[_1479]]) + 32 >= 0 and _1479 + ceil32(return_data.size) + (32 * mem[_1479 + mem[_1479]]) + 32 <= test266151307()
            mem[64] = _1479 + ceil32(return_data.size) + (32 * mem[_1479 + mem[_1479]]) + 32
            mem[_1479 + ceil32(return_data.size)] = _1527
            require return_data.size >= _1503 + (32 * _1527) + 32
            mem[_1479 + ceil32(return_data.size) + 32 len 32 * _1527] = mem[_1479 + _1503 + 32 len 32 * _1527]
            require _1527 - 1 < _1527
            if not mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0] > 0)
            if 9 * mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32] / mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1527 - 1) + _1479 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
        if stor13 == wantAddress:
            _779 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_779]
            mem[_779 + 32] = stor17
            require 1 < mem[_779]
            if stor13 == wantAddress:
                mem[_779 + 64] = wantAddress
                mem[_779 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_779 + 100] = _763 + _54
                mem[_779 + 132] = 64
                mem[_779 + 164] = mem[_779]
                idx = 0
                s = _779 + 32
                t = _779 + 196
                while idx < mem[_779]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _779 + (32 * mem[_779]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1482 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1506 = mem[_1482]
                require mem[_1482] <= test266151307()
                require _1482 + return_data.size > _1482 + mem[_1482] + 31
                _1530 = mem[_1482 + mem[_1482]]
                require mem[_1482 + mem[_1482]] <= test266151307()
                require (32 * mem[_1482 + mem[_1482]]) + 32 >= 0 and _1482 + ceil32(return_data.size) + (32 * mem[_1482 + mem[_1482]]) + 32 <= test266151307()
                mem[64] = _1482 + ceil32(return_data.size) + (32 * mem[_1482 + mem[_1482]]) + 32
                mem[_1482 + ceil32(return_data.size)] = _1530
                require return_data.size >= _1506 + (32 * _1530) + 32
                mem[_1482 + ceil32(return_data.size) + 32 len 32 * _1530] = mem[_1482 + _1506 + 32 len 32 * _1530]
                require _1530 - 1 < _1530
                if not mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32]:
                    return (2 * ext_call.return_data[0] > 0)
                if 9 * mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32] / mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32] != 9:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 9 * mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32] / 10 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return ((9 * mem[(32 * _1530 - 1) + _1482 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
            mem[_779 + 64] = stor13
            require 2 < mem[_779]
            mem[_779 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_779 + 100] = _763 + _54
            mem[_779 + 132] = 64
            mem[_779 + 164] = mem[_779]
            idx = 0
            s = _779 + 32
            t = _779 + 196
            while idx < mem[_779]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _779 + (32 * mem[_779]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1481 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1505 = mem[_1481]
            require mem[_1481] <= test266151307()
            require _1481 + return_data.size > _1481 + mem[_1481] + 31
            _1529 = mem[_1481 + mem[_1481]]
            require mem[_1481 + mem[_1481]] <= test266151307()
            require (32 * mem[_1481 + mem[_1481]]) + 32 >= 0 and _1481 + ceil32(return_data.size) + (32 * mem[_1481 + mem[_1481]]) + 32 <= test266151307()
            mem[64] = _1481 + ceil32(return_data.size) + (32 * mem[_1481 + mem[_1481]]) + 32
            mem[_1481 + ceil32(return_data.size)] = _1529
            require return_data.size >= _1505 + (32 * _1529) + 32
            mem[_1481 + ceil32(return_data.size) + 32 len 32 * _1529] = mem[_1481 + _1505 + 32 len 32 * _1529]
            require _1529 - 1 < _1529
            if not mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0] > 0)
            if 9 * mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32] / mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1529 - 1) + _1481 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
        _780 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_780 + 32 len 96] = call.data[calldata.size len 96]
        require 0 < mem[_780]
        mem[_780 + 32] = stor17
        require 1 < mem[_780]
        if stor13 == wantAddress:
            mem[_780 + 64] = wantAddress
            mem[_780 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_780 + 132] = _763 + _54
            mem[_780 + 164] = 64
            mem[_780 + 196] = mem[_780]
            idx = 0
            s = _780 + 32
            t = _780 + 228
            while idx < mem[_780]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _780 + (32 * mem[_780]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1484 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1508 = mem[_1484]
            require mem[_1484] <= test266151307()
            require _1484 + return_data.size > _1484 + mem[_1484] + 31
            _1532 = mem[_1484 + mem[_1484]]
            require mem[_1484 + mem[_1484]] <= test266151307()
            require (32 * mem[_1484 + mem[_1484]]) + 32 >= 0 and _1484 + ceil32(return_data.size) + (32 * mem[_1484 + mem[_1484]]) + 32 <= test266151307()
            mem[64] = _1484 + ceil32(return_data.size) + (32 * mem[_1484 + mem[_1484]]) + 32
            mem[_1484 + ceil32(return_data.size)] = _1532
            require return_data.size >= _1508 + (32 * _1532) + 32
            mem[_1484 + ceil32(return_data.size) + 32 len 32 * _1532] = mem[_1484 + _1508 + 32 len 32 * _1532]
            require _1532 - 1 < _1532
            if not mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0] > 0)
            if 9 * mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32] / mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1532 - 1) + _1484 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
        mem[_780 + 64] = stor13
        require 2 < mem[_780]
        mem[_780 + 96] = wantAddress
        mem[_780 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_780 + 132] = _763 + _54
        mem[_780 + 164] = 64
        mem[_780 + 196] = mem[_780]
        idx = 0
        s = _780 + 32
        t = _780 + 228
        while idx < mem[_780]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _780 + (32 * mem[_780]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1483 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1507 = mem[_1483]
        require mem[_1483] <= test266151307()
        require _1483 + return_data.size > _1483 + mem[_1483] + 31
        _1531 = mem[_1483 + mem[_1483]]
        require mem[_1483 + mem[_1483]] <= test266151307()
        require (32 * mem[_1483 + mem[_1483]]) + 32 >= 0 and _1483 + ceil32(return_data.size) + (32 * mem[_1483 + mem[_1483]]) + 32 <= test266151307()
        mem[64] = _1483 + ceil32(return_data.size) + (32 * mem[_1483 + mem[_1483]]) + 32
        mem[_1483 + ceil32(return_data.size)] = _1531
        require return_data.size >= _1507 + (32 * _1531) + 32
        mem[_1483 + ceil32(return_data.size) + 32 len 32 * _1531] = mem[_1483 + _1507 + 32 len 32 * _1531]
        require _1531 - 1 < _1531
        if not mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32]:
            return (2 * ext_call.return_data[0] > 0)
        if 9 * mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32] / mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9 * mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32] / 10 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1531 - 1) + _1483 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
    mem[_58 + (8 * ceil32(return_data.size)) + 416] = 0
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor17)
    staticcall stor17.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _760 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _764 = mem[_760]
    if mem[_760] + _54 < _54:
        revert with 0, 'SafeMath: addition overflow'
    if not mem[_760] + _54:
        return (2 * ext_call.return_data[0] > 0)
    if stor13 == stor17:
        _776 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_776]
        mem[_776 + 32] = stor17
        require 1 < mem[_776]
        if stor13 == stor17:
            mem[_776 + 64] = wantAddress
            mem[_776 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_776 + 100] = _764 + _54
            mem[_776 + 132] = 64
            mem[_776 + 164] = mem[_776]
            idx = 0
            s = _776 + 32
            t = _776 + 196
            while idx < mem[_776]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _776 + (32 * mem[_776]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1486 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1510 = mem[_1486]
            require mem[_1486] <= test266151307()
            require _1486 + return_data.size > _1486 + mem[_1486] + 31
            _1534 = mem[_1486 + mem[_1486]]
            require mem[_1486 + mem[_1486]] <= test266151307()
            require (32 * mem[_1486 + mem[_1486]]) + 32 >= 0 and _1486 + ceil32(return_data.size) + (32 * mem[_1486 + mem[_1486]]) + 32 <= test266151307()
            mem[64] = _1486 + ceil32(return_data.size) + (32 * mem[_1486 + mem[_1486]]) + 32
            mem[_1486 + ceil32(return_data.size)] = _1534
            require return_data.size >= _1510 + (32 * _1534) + 32
            mem[_1486 + ceil32(return_data.size) + 32 len 32 * _1534] = mem[_1486 + _1510 + 32 len 32 * _1534]
            require _1534 - 1 < _1534
            if not mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0] > 0)
            if 9 * mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32] / mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1534 - 1) + _1486 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
        mem[_776 + 64] = stor13
        require 2 < mem[_776]
        mem[_776 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_776 + 100] = _764 + _54
        mem[_776 + 132] = 64
        mem[_776 + 164] = mem[_776]
        idx = 0
        s = _776 + 32
        t = _776 + 196
        while idx < mem[_776]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _776 + (32 * mem[_776]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1485 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1509 = mem[_1485]
        require mem[_1485] <= test266151307()
        require _1485 + return_data.size > _1485 + mem[_1485] + 31
        _1533 = mem[_1485 + mem[_1485]]
        require mem[_1485 + mem[_1485]] <= test266151307()
        require (32 * mem[_1485 + mem[_1485]]) + 32 >= 0 and _1485 + ceil32(return_data.size) + (32 * mem[_1485 + mem[_1485]]) + 32 <= test266151307()
        mem[64] = _1485 + ceil32(return_data.size) + (32 * mem[_1485 + mem[_1485]]) + 32
        mem[_1485 + ceil32(return_data.size)] = _1533
        require return_data.size >= _1509 + (32 * _1533) + 32
        mem[_1485 + ceil32(return_data.size) + 32 len 32 * _1533] = mem[_1485 + _1509 + 32 len 32 * _1533]
        require _1533 - 1 < _1533
        if not mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32]:
            return (2 * ext_call.return_data[0] > 0)
        if 9 * mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32] / mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9 * mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32] / 10 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1533 - 1) + _1485 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
    if stor13 == wantAddress:
        _781 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_781]
        mem[_781 + 32] = stor17
        require 1 < mem[_781]
        if stor13 == wantAddress:
            mem[_781 + 64] = wantAddress
            mem[_781 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_781 + 100] = _764 + _54
            mem[_781 + 132] = 64
            mem[_781 + 164] = mem[_781]
            idx = 0
            s = _781 + 32
            t = _781 + 196
            while idx < mem[_781]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor11)
            staticcall stor11.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _781 + (32 * mem[_781]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1488 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1512 = mem[_1488]
            require mem[_1488] <= test266151307()
            require _1488 + return_data.size > _1488 + mem[_1488] + 31
            _1536 = mem[_1488 + mem[_1488]]
            require mem[_1488 + mem[_1488]] <= test266151307()
            require (32 * mem[_1488 + mem[_1488]]) + 32 >= 0 and _1488 + ceil32(return_data.size) + (32 * mem[_1488 + mem[_1488]]) + 32 <= test266151307()
            mem[64] = _1488 + ceil32(return_data.size) + (32 * mem[_1488 + mem[_1488]]) + 32
            mem[_1488 + ceil32(return_data.size)] = _1536
            require return_data.size >= _1512 + (32 * _1536) + 32
            mem[_1488 + ceil32(return_data.size) + 32 len 32 * _1536] = mem[_1488 + _1512 + 32 len 32 * _1536]
            require _1536 - 1 < _1536
            if not mem[(32 * _1536 - 1) + _1488 + ceil32(return_data.size) + 32]:
                return (2 * ext_call.return_data[0] > 0)
            if 9 * mem[(32 * _1536 - 1) + _1488 + ceil32(return_data.size) + 32] / mem[(32 * _1536 - 1) + _1488 + ceil32(return_data.size) + 32] != 9:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9 * mem[(32 * _1536 - 1) + _1488 + ceil32(return_data.size) + 32] / 10 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((9 * mem[(32 * _1536 - 1) + _1488 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
        mem[_781 + 64] = stor13
        require 2 < mem[_781]
        mem[_781 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_781 + 100] = _764 + _54
        mem[_781 + 132] = 64
        mem[_781 + 164] = mem[_781]
        idx = 0
        s = _781 + 32
        t = _781 + 196
        while idx < mem[_781]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _781 + (32 * mem[_781]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1487 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1511 = mem[_1487]
        require mem[_1487] <= test266151307()
        require _1487 + return_data.size > _1487 + mem[_1487] + 31
        _1535 = mem[_1487 + mem[_1487]]
        require mem[_1487 + mem[_1487]] <= test266151307()
        require (32 * mem[_1487 + mem[_1487]]) + 32 >= 0 and _1487 + ceil32(return_data.size) + (32 * mem[_1487 + mem[_1487]]) + 32 <= test266151307()
        mem[64] = _1487 + ceil32(return_data.size) + (32 * mem[_1487 + mem[_1487]]) + 32
        mem[_1487 + ceil32(return_data.size)] = _1535
        require return_data.size >= _1511 + (32 * _1535) + 32
        mem[_1487 + ceil32(return_data.size) + 32 len 32 * _1535] = mem[_1487 + _1511 + 32 len 32 * _1535]
        require _1535 - 1 < _1535
        if not mem[(32 * _1535 - 1) + _1487 + ceil32(return_data.size) + 32]:
            return (2 * ext_call.return_data[0] > 0)
        if 9 * mem[(32 * _1535 - 1) + _1487 + ceil32(return_data.size) + 32] / mem[(32 * _1535 - 1) + _1487 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9 * mem[(32 * _1535 - 1) + _1487 + ceil32(return_data.size) + 32] / 10 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1535 - 1) + _1487 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
    _782 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    mem[_782 + 32 len 96] = call.data[calldata.size len 96]
    require 0 < mem[_782]
    mem[_782 + 32] = stor17
    require 1 < mem[_782]
    if stor13 == wantAddress:
        mem[_782 + 64] = wantAddress
        mem[_782 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_782 + 132] = _764 + _54
        mem[_782 + 164] = 64
        mem[_782 + 196] = mem[_782]
        idx = 0
        s = _782 + 32
        t = _782 + 228
        while idx < mem[_782]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _782 + (32 * mem[_782]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1490 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1514 = mem[_1490]
        require mem[_1490] <= test266151307()
        require _1490 + return_data.size > _1490 + mem[_1490] + 31
        _1538 = mem[_1490 + mem[_1490]]
        require mem[_1490 + mem[_1490]] <= test266151307()
        require (32 * mem[_1490 + mem[_1490]]) + 32 >= 0 and _1490 + ceil32(return_data.size) + (32 * mem[_1490 + mem[_1490]]) + 32 <= test266151307()
        mem[64] = _1490 + ceil32(return_data.size) + (32 * mem[_1490 + mem[_1490]]) + 32
        mem[_1490 + ceil32(return_data.size)] = _1538
        require return_data.size >= _1514 + (32 * _1538) + 32
        mem[_1490 + ceil32(return_data.size) + 32 len 32 * _1538] = mem[_1490 + _1514 + 32 len 32 * _1538]
        require _1538 - 1 < _1538
        if not mem[(32 * _1538 - 1) + _1490 + ceil32(return_data.size) + 32]:
            return (2 * ext_call.return_data[0] > 0)
        if 9 * mem[(32 * _1538 - 1) + _1490 + ceil32(return_data.size) + 32] / mem[(32 * _1538 - 1) + _1490 + ceil32(return_data.size) + 32] != 9:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9 * mem[(32 * _1538 - 1) + _1490 + ceil32(return_data.size) + 32] / 10 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9 * mem[(32 * _1538 - 1) + _1490 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
    mem[_782 + 64] = stor13
    require 2 < mem[_782]
    mem[_782 + 96] = wantAddress
    mem[_782 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_782 + 132] = _764 + _54
    mem[_782 + 164] = 64
    mem[_782 + 196] = mem[_782]
    idx = 0
    s = _782 + 32
    t = _782 + 228
    while idx < mem[_782]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor11)
    staticcall stor11.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _782 + (32 * mem[_782]) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1489 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1513 = mem[_1489]
    require mem[_1489] <= test266151307()
    require _1489 + return_data.size > _1489 + mem[_1489] + 31
    _1537 = mem[_1489 + mem[_1489]]
    require mem[_1489 + mem[_1489]] <= test266151307()
    require (32 * mem[_1489 + mem[_1489]]) + 32 >= 0 and _1489 + ceil32(return_data.size) + (32 * mem[_1489 + mem[_1489]]) + 32 <= test266151307()
    mem[64] = _1489 + ceil32(return_data.size) + (32 * mem[_1489 + mem[_1489]]) + 32
    mem[_1489 + ceil32(return_data.size)] = _1537
    require return_data.size >= _1513 + (32 * _1537) + 32
    mem[_1489 + ceil32(return_data.size) + 32 len 32 * _1537] = mem[_1489 + _1513 + 32 len 32 * _1537]
    require _1537 - 1 < _1537
    if not mem[(32 * _1537 - 1) + _1489 + ceil32(return_data.size) + 32]:
        return (2 * ext_call.return_data[0] > 0)
    if 9 * mem[(32 * _1537 - 1) + _1489 + ceil32(return_data.size) + 32] / mem[(32 * _1537 - 1) + _1489 + ceil32(return_data.size) + 32] != 9:
        revert with 0, 'SafeMath: multiplication overflow'
    if 9 * mem[(32 * _1537 - 1) + _1489 + ceil32(return_data.size) + 32] / 10 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((9 * mem[(32 * _1537 - 1) + _1489 + ceil32(return_data.size) + 32] / 10) + (2 * ext_call.return_data[0]) > 0)
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
    mem[ceil32(return_data.size) + 96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = uint256(stor21.field_0)
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(address(stor15))
    staticcall address(stor15).pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor21.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 128
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 0, stor21.field_32)
    require uint32(stor21.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
    _10 = 0, mem[ceil32(return_data.size) + 164 len 28]
    require 0, mem[ceil32(return_data.size) + 164 len 28] <= test266151307()
    require ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]
    require mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96] <= test266151307()
    require ceil32(mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(mem[ceil32(return_data.size) + 0, mem[ceil32(return_data.size) + 164 len 28] + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = _11
    require _10 + _11 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_11)] = mem[ceil32(return_data.size) + _10 + 128 len ceil32(_11)]
    if ceil32(_11) <= _11:
        if _8 < stor18:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3306 = mem[_3303]
            if not mem[_3303]:
                require ext_code.size(address(stor15))
                staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args uint256(stor21.field_0), this.address
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3325 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3330 = mem[_3325]
                mem[mem[64] + 36] = mem[_3325]
                require ext_code.size(address(stor15))
                call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uint256(stor21.field_0), _3330
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor16)
                staticcall stor16.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3380 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3391 = mem[_3380]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _3391
                require ext_code.size(stor16)
                call stor16.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), _3391
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3441 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3441] == bool(mem[_3441])
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3651 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3702 = mem[_3651]
                _3734 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _3702
                _3794 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_3734 + 100] = 32
                mem[_3734 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4001 = mem[_3794]
                mem[_3734 + 164 len ceil32(mem[_3794])] = mem[_3794 + 32 len ceil32(mem[_3794])]
                if ceil32(_4001) > _4001:
                    mem[_4001 + _3734 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_3734 + 168 len _4001 - 4]
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
                    mem[_3734 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3734 + 196] == bool(mem[_3734 + 196])
                        if not mem[_3734 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                _3314 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _3306
                _3320 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_3314 + 100] = 32
                mem[_3314 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor17):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor17):
                    revert with 0, 'Address: call to non-contract'
                _3360 = mem[_3320]
                mem[_3314 + 164 len ceil32(mem[_3320])] = mem[_3320 + 32 len ceil32(mem[_3320])]
                if ceil32(_3360) > _3360:
                    mem[_3360 + _3314 + 164] = 0
                call stor17 with:
                     gas gas_remaining wei
                    args mem[_3314 + 168 len _3360 - 4]
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
                    require ext_code.size(address(stor15))
                    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(stor21.field_0), this.address
                    mem[_3314 + 164 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3314 + ceil32(return_data.size) + 200] = ext_call.return_data[0]
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3314 + ceil32(return_data.size) + 168] = this.address
                    require ext_code.size(stor16)
                    staticcall stor16.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3314 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_3314 + (2 * ceil32(return_data.size)) + 168] = arg1
                    mem[_3314 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                    require ext_code.size(stor16)
                    call stor16.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[_3314 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_3314 + (4 * ceil32(return_data.size)) + 168] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3314 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_3314 + (6 * ceil32(return_data.size)) + 200] = arg1
                    mem[_3314 + (6 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
                    mem[_3314 + (6 * ceil32(return_data.size)) + 164] = 68
                    mem[_3314 + (6 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_3314 + (6 * ceil32(return_data.size)) + 264] = 32
                    mem[_3314 + (6 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_3314 + (6 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[_3314 + (6 * ceil32(return_data.size)) + 396] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
                        mem[_3314 + (6 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3314 + (6 * ceil32(return_data.size)) + 360] == bool(mem[_3314 + (6 * ceil32(return_data.size)) + 360])
                            if not mem[_3314 + (6 * ceil32(return_data.size)) + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_3314 + 164] = return_data.size
                    mem[_3314 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3314 + 196] == bool(mem[_3314 + 196])
                        if not mem[_3314 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor15))
                    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(stor21.field_0), this.address
                    mem[_3314 + ceil32(return_data.size) + 165 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3314 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3314 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                    require ext_code.size(stor16)
                    staticcall stor16.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3314 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_3314 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 169] = arg1
                    mem[_3314 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                    require ext_code.size(stor16)
                    call stor16.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[_3314 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_3314 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3314 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = arg1
                    mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
                    mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 165] = 68
                    mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 265] = 32
                    mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 397] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
                        mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_3314 + (9 * ceil32(return_data.size)) + 430 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361] == bool(mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361])
                            if not mem[_3314 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_3314 + (9 * ceil32(return_data.size)) + 462 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            _3287 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            require 0 < mem[_3287]
            mem[_3287 + 32] = uint256(stor21.field_0)
            mem[_3287 + 64] = 0x4ed73d2800000000000000000000000000000000000000000000000000000000
            mem[_3287 + 68] = 32
            mem[_3287 + 100] = mem[_3287]
            mem[_3287 + 132 len 32 * mem[_3287]] = mem[_3287 + 32 len 32 * mem[_3287]]
            require ext_code.size(address(stor15))
            call address(stor15) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3287 + (32 * mem[_3287]) + -mem[64] + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6647 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6681 = mem[_6647]
            if not mem[_6647]:
                require ext_code.size(address(stor15))
                staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args uint256(stor21.field_0), this.address
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6797 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _6857 = mem[_6797]
                mem[mem[64] + 36] = mem[_6797]
                require ext_code.size(address(stor15))
                call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uint256(stor21.field_0), _6857
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor16)
                staticcall stor16.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6973 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6999 = mem[_6973]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _6999
                require ext_code.size(stor16)
                call stor16.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), _6999
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7069 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7069] == bool(mem[_7069])
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7303 = mem[_7261]
                _7337 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _7303
                _7387 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_7337 + 100] = 32
                mem[_7337 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _7583 = mem[_7387]
                mem[_7337 + 164 len ceil32(mem[_7387])] = mem[_7387 + 32 len ceil32(mem[_7387])]
                if ceil32(_7583) > _7583:
                    mem[_7583 + _7337 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_7337 + 168 len _7583 - 4]
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
                    mem[_7337 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_7337 + 196] == bool(mem[_7337 + 196])
                        if not mem[_7337 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                _6765 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _6681
                _6777 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_6765 + 100] = 32
                mem[_6765 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor17):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor17):
                    revert with 0, 'Address: call to non-contract'
                _6906 = mem[_6777]
                mem[_6765 + 164 len ceil32(mem[_6777])] = mem[_6777 + 32 len ceil32(mem[_6777])]
                if ceil32(_6906) > _6906:
                    mem[_6906 + _6765 + 164] = 0
                call stor17 with:
                     gas gas_remaining wei
                    args mem[_6765 + 168 len _6906 - 4]
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
                    require ext_code.size(address(stor15))
                    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(stor21.field_0), this.address
                    mem[_6765 + 164 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_6765 + ceil32(return_data.size) + 200] = ext_call.return_data[0]
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_6765 + ceil32(return_data.size) + 168] = this.address
                    require ext_code.size(stor16)
                    staticcall stor16.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_6765 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_6765 + (2 * ceil32(return_data.size)) + 168] = arg1
                    mem[_6765 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                    require ext_code.size(stor16)
                    call stor16.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[_6765 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_6765 + (4 * ceil32(return_data.size)) + 168] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_6765 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_6765 + (6 * ceil32(return_data.size)) + 200] = arg1
                    mem[_6765 + (6 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
                    mem[_6765 + (6 * ceil32(return_data.size)) + 164] = 68
                    mem[_6765 + (6 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_6765 + (6 * ceil32(return_data.size)) + 264] = 32
                    mem[_6765 + (6 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_6765 + (6 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[_6765 + (6 * ceil32(return_data.size)) + 396] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
                        mem[_6765 + (6 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6765 + (6 * ceil32(return_data.size)) + 360] == bool(mem[_6765 + (6 * ceil32(return_data.size)) + 360])
                            if not mem[_6765 + (6 * ceil32(return_data.size)) + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_6765 + 164] = return_data.size
                    mem[_6765 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_6765 + 196] == bool(mem[_6765 + 196])
                        if not mem[_6765 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor15))
                    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(stor21.field_0), this.address
                    mem[_6765 + ceil32(return_data.size) + 165 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_6765 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_6765 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                    require ext_code.size(stor16)
                    staticcall stor16.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_6765 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_6765 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 169] = arg1
                    mem[_6765 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                    require ext_code.size(stor16)
                    call stor16.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[_6765 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_6765 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_6765 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = arg1
                    mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
                    mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 165] = 68
                    mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 265] = 32
                    mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 397] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
                        mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_6765 + (9 * ceil32(return_data.size)) + 430 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361] == bool(mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361])
                            if not mem[_6765 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_6765 + (9 * ceil32(return_data.size)) + 462 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[_11 + (2 * ceil32(return_data.size)) + 128] = 0
        if _8 < stor18:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3304 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3308 = mem[_3304]
            if not mem[_3304]:
                require ext_code.size(address(stor15))
                staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args uint256(stor21.field_0), this.address
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3327 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3334 = mem[_3327]
                mem[mem[64] + 36] = mem[_3327]
                require ext_code.size(address(stor15))
                call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uint256(stor21.field_0), _3334
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor16)
                staticcall stor16.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3382 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3396 = mem[_3382]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _3396
                require ext_code.size(stor16)
                call stor16.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), _3396
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3446 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3446] == bool(mem[_3446])
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3664 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3712 = mem[_3664]
                _3748 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _3712
                _3825 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_3748 + 100] = 32
                mem[_3748 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _4006 = mem[_3825]
                mem[_3748 + 164 len ceil32(mem[_3825])] = mem[_3825 + 32 len ceil32(mem[_3825])]
                if ceil32(_4006) > _4006:
                    mem[_4006 + _3748 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_3748 + 168 len _4006 - 4]
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
                    mem[_3748 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3748 + 196] == bool(mem[_3748 + 196])
                        if not mem[_3748 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                _3316 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _3308
                _3323 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_3316 + 100] = 32
                mem[_3316 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor17):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor17):
                    revert with 0, 'Address: call to non-contract'
                _3362 = mem[_3323]
                mem[_3316 + 164 len ceil32(mem[_3323])] = mem[_3323 + 32 len ceil32(mem[_3323])]
                if ceil32(_3362) > _3362:
                    mem[_3362 + _3316 + 164] = 0
                call stor17 with:
                     gas gas_remaining wei
                    args mem[_3316 + 168 len _3362 - 4]
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
                    require ext_code.size(address(stor15))
                    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(stor21.field_0), this.address
                    mem[_3316 + 164 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3316 + ceil32(return_data.size) + 200] = ext_call.return_data[0]
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3316 + ceil32(return_data.size) + 168] = this.address
                    require ext_code.size(stor16)
                    staticcall stor16.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3316 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_3316 + (2 * ceil32(return_data.size)) + 168] = arg1
                    mem[_3316 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                    require ext_code.size(stor16)
                    call stor16.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[_3316 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_3316 + (4 * ceil32(return_data.size)) + 168] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3316 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_3316 + (6 * ceil32(return_data.size)) + 200] = arg1
                    mem[_3316 + (6 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
                    mem[_3316 + (6 * ceil32(return_data.size)) + 164] = 68
                    mem[_3316 + (6 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_3316 + (6 * ceil32(return_data.size)) + 264] = 32
                    mem[_3316 + (6 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_3316 + (6 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[_3316 + (6 * ceil32(return_data.size)) + 396] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
                        mem[_3316 + (6 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3316 + (6 * ceil32(return_data.size)) + 360] == bool(mem[_3316 + (6 * ceil32(return_data.size)) + 360])
                            if not mem[_3316 + (6 * ceil32(return_data.size)) + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_3316 + 164] = return_data.size
                    mem[_3316 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_3316 + 196] == bool(mem[_3316 + 196])
                        if not mem[_3316 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor15))
                    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(stor21.field_0), this.address
                    mem[_3316 + ceil32(return_data.size) + 165 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3316 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3316 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                    require ext_code.size(stor16)
                    staticcall stor16.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3316 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_3316 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 169] = arg1
                    mem[_3316 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                    require ext_code.size(stor16)
                    call stor16.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[_3316 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_3316 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_3316 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = arg1
                    mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
                    mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 165] = 68
                    mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 265] = 32
                    mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 397] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
                        mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_3316 + (9 * ceil32(return_data.size)) + 430 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361] == bool(mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361])
                            if not mem[_3316 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_3316 + (9 * ceil32(return_data.size)) + 462 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            _3289 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            require 0 < mem[_3289]
            mem[_3289 + 32] = uint256(stor21.field_0)
            mem[_3289 + 64] = 0x4ed73d2800000000000000000000000000000000000000000000000000000000
            mem[_3289 + 68] = 32
            mem[_3289 + 100] = mem[_3289]
            mem[_3289 + 132 len 32 * mem[_3289]] = mem[_3289 + 32 len 32 * mem[_3289]]
            require ext_code.size(address(stor15))
            call address(stor15) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3289 + (32 * mem[_3289]) + -mem[64] + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6656 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _6690 = mem[_6656]
            if not mem[_6656]:
                require ext_code.size(address(stor15))
                staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                        gas gas_remaining wei
                       args uint256(stor21.field_0), this.address
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6811 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _6860 = mem[_6811]
                mem[mem[64] + 36] = mem[_6811]
                require ext_code.size(address(stor15))
                call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args uint256(stor21.field_0), _6860
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor16)
                staticcall stor16.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6978 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7002 = mem[_6978]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = _7002
                require ext_code.size(stor16)
                call stor16.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), _7002
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7082 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7082] == bool(mem[_7082])
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _7316 = mem[_7278]
                _7354 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _7316
                _7405 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_7354 + 100] = 32
                mem[_7354 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                _7584 = mem[_7405]
                mem[_7354 + 164 len ceil32(mem[_7405])] = mem[_7405 + 32 len ceil32(mem[_7405])]
                if ceil32(_7584) > _7584:
                    mem[_7584 + _7354 + 164] = 0
                call wantAddress with:
                     gas gas_remaining wei
                    args mem[_7354 + 168 len _7584 - 4]
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
                    mem[_7354 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_7354 + 196] == bool(mem[_7354 + 196])
                        if not mem[_7354 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                _6766 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _6690
                _6787 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_6766 + 100] = 32
                mem[_6766 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor17):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(stor17):
                    revert with 0, 'Address: call to non-contract'
                _6924 = mem[_6787]
                mem[_6766 + 164 len ceil32(mem[_6787])] = mem[_6787 + 32 len ceil32(mem[_6787])]
                if ceil32(_6924) > _6924:
                    mem[_6924 + _6766 + 164] = 0
                call stor17 with:
                     gas gas_remaining wei
                    args mem[_6766 + 168 len _6924 - 4]
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
                    require ext_code.size(address(stor15))
                    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(stor21.field_0), this.address
                    mem[_6766 + 164 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_6766 + ceil32(return_data.size) + 200] = ext_call.return_data[0]
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_6766 + ceil32(return_data.size) + 168] = this.address
                    require ext_code.size(stor16)
                    staticcall stor16.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_6766 + ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_6766 + (2 * ceil32(return_data.size)) + 168] = arg1
                    mem[_6766 + (2 * ceil32(return_data.size)) + 200] = ext_call.return_data[0]
                    require ext_code.size(stor16)
                    call stor16.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[_6766 + (2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_6766 + (4 * ceil32(return_data.size)) + 168] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_6766 + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_6766 + (6 * ceil32(return_data.size)) + 200] = arg1
                    mem[_6766 + (6 * ceil32(return_data.size)) + 232] = ext_call.return_data[0]
                    mem[_6766 + (6 * ceil32(return_data.size)) + 164] = 68
                    mem[_6766 + (6 * ceil32(return_data.size)) + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[_6766 + (6 * ceil32(return_data.size)) + 264] = 32
                    mem[_6766 + (6 * ceil32(return_data.size)) + 296] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_6766 + (6 * ceil32(return_data.size)) + 328 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[_6766 + (6 * ceil32(return_data.size)) + 396] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
                        mem[_6766 + (6 * ceil32(return_data.size)) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6766 + (6 * ceil32(return_data.size)) + 360] == bool(mem[_6766 + (6 * ceil32(return_data.size)) + 360])
                            if not mem[_6766 + (6 * ceil32(return_data.size)) + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_6766 + 164] = return_data.size
                    mem[_6766 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_6766 + 196] == bool(mem[_6766 + 196])
                        if not mem[_6766 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(stor15))
                    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args uint256(stor21.field_0), this.address
                    mem[_6766 + ceil32(return_data.size) + 165 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_6766 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = ext_call.return_data[0]
                    require ext_code.size(address(stor15))
                    call address(stor15).withdraw(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args uint256(stor21.field_0), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_6766 + ceil32(return_data.size) + ceil32(return_data.size) + 169] = this.address
                    require ext_code.size(stor16)
                    staticcall stor16.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_6766 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_6766 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 169] = arg1
                    mem[_6766 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                    require ext_code.size(stor16)
                    call stor16.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[_6766 + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[_6766 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 169] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_6766 + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 201] = arg1
                    mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
                    mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 165] = 68
                    mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 265] = 32
                    mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 297] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 329 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 397] = 0
                    call wantAddress with:
                       funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
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
                        mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_6766 + (9 * ceil32(return_data.size)) + 430 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361] == bool(mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361])
                            if not mem[_6766 + ceil32(return_data.size) + (6 * ceil32(return_data.size)) + 361]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[_6766 + (9 * ceil32(return_data.size)) + 462 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function expectedReturn() payable {
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor15))
    staticcall address(stor15).userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args uint256(stor21.field_0), this.address
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor16)
    staticcall stor16.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        mem[(4 * ceil32(return_data.size)) + 96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 100] = uint256(stor21.field_0)
        mem[(4 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(address(stor15))
        staticcall address(stor15).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args uint256(stor21.field_0), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 128
        _28 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor21.field_32)
        require uint32(stor21.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
        _33 = 0, mem[(4 * ceil32(return_data.size)) + 164 len 28]
        require 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] <= test266151307()
        require (4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _35 = mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]
        require mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96] <= test266151307()
        require ceil32(mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]) + 128 <= test266151307()
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]) + 128
        mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + 0, mem[(4 * ceil32(return_data.size)) + 164 len 28] + 96]
        require _33 + _35 + 32 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_35)] = mem[(4 * ceil32(return_data.size)) + _33 + 128 len ceil32(_35)]
        if ceil32(_35) <= _35:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1629 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1633 = mem[_1629]
            if mem[_1629] + _28 < _28:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_1629] + _28:
                _1660 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1660] = 26
                mem[_1660 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).strategies(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _1862 = mem[64]
                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                mem[64] = mem[64] + 288
                mem[_1862] = mem[_1822]
                mem[_1862 + 32] = mem[_1822 + 32]
                mem[_1862 + 64] = mem[_1822 + 64]
                mem[_1862 + 96] = mem[_1822 + 96]
                mem[_1862 + 128] = mem[_1822 + 128]
                mem[_1862 + 160] = mem[_1822 + 160]
                mem[_1862 + 192] = mem[_1822 + 192]
                if mem[_1862 + 192] <= ext_call.return_data[0]:
                    return (ext_call.return_data[0] - mem[_1862 + 192])
            else:
                if stor13 == stor17:
                    _1645 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1645]
                    mem[_1645 + 32] = stor17
                    require 1 < mem[_1645]
                    if stor13 == stor17:
                        mem[_1645 + 64] = wantAddress
                        mem[_1645 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1645 + 100] = _1633 + _28
                        mem[_1645 + 132] = 64
                        mem[_1645 + 164] = mem[_1645]
                        idx = 0
                        s = _1645 + 32
                        t = _1645 + 196
                        while idx < mem[_1645]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1645 + (32 * mem[_1645]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3244 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3268 = mem[_3244]
                        require mem[_3244] <= test266151307()
                        require _3244 + return_data.size > _3244 + mem[_3244] + 31
                        _3292 = mem[_3244 + mem[_3244]]
                        require mem[_3244 + mem[_3244]] <= test266151307()
                        require (32 * mem[_3244 + mem[_3244]]) + 32 >= 0 and _3244 + ceil32(return_data.size) + (32 * mem[_3244 + mem[_3244]]) + 32 <= test266151307()
                        mem[64] = _3244 + ceil32(return_data.size) + (32 * mem[_3244 + mem[_3244]]) + 32
                        mem[_3244 + ceil32(return_data.size)] = _3292
                        require return_data.size >= _3268 + (32 * _3292) + 32
                        mem[_3244 + ceil32(return_data.size) + 32 len 32 * _3292] = mem[_3244 + _3268 + 32 len 32 * _3292]
                        require _3292 - 1 < _3292
                        _4612 = mem[(32 * _3292 - 1) + _3244 + ceil32(return_data.size) + 32]
                        if not mem[(32 * _3292 - 1) + _3244 + ceil32(return_data.size) + 32]:
                            _4660 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4660] = 26
                            mem[_4660 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4924 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4972 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4972] = mem[_4924]
                            mem[_4972 + 32] = mem[_4924 + 32]
                            mem[_4972 + 64] = mem[_4924 + 64]
                            mem[_4972 + 96] = mem[_4924 + 96]
                            mem[_4972 + 128] = mem[_4924 + 128]
                            mem[_4972 + 160] = mem[_4924 + 160]
                            mem[_4972 + 192] = mem[_4924 + 192]
                            if mem[_4972 + 192] <= ext_call.return_data[0]:
                                return (ext_call.return_data[0] - mem[_4972 + 192])
                        else:
                            if 9 * mem[(32 * _3292 - 1) + _3244 + ceil32(return_data.size) + 32] / mem[(32 * _3292 - 1) + _3244 + ceil32(return_data.size) + 32] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4697 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4697] = 26
                            mem[_4697 + 32] = 'SafeMath: division by zero'
                            if (9 * _4612 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4948 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4996 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4996] = mem[_4948]
                            mem[_4996 + 32] = mem[_4948 + 32]
                            mem[_4996 + 64] = mem[_4948 + 64]
                            mem[_4996 + 96] = mem[_4948 + 96]
                            mem[_4996 + 128] = mem[_4948 + 128]
                            mem[_4996 + 160] = mem[_4948 + 160]
                            mem[_4996 + 192] = mem[_4948 + 192]
                            if mem[_4996 + 192] <= (9 * _4612 / 10) + ext_call.return_data[0]:
                                return ((9 * _4612 / 10) + ext_call.return_data[0] - mem[_4996 + 192])
                    else:
                        mem[_1645 + 64] = stor13
                        require 2 < mem[_1645]
                        mem[_1645 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1645 + 100] = _1633 + _28
                        mem[_1645 + 132] = 64
                        mem[_1645 + 164] = mem[_1645]
                        idx = 0
                        s = _1645 + 32
                        t = _1645 + 196
                        while idx < mem[_1645]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1645 + (32 * mem[_1645]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3243 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3267 = mem[_3243]
                        require mem[_3243] <= test266151307()
                        require _3243 + return_data.size > _3243 + mem[_3243] + 31
                        _3291 = mem[_3243 + mem[_3243]]
                        require mem[_3243 + mem[_3243]] <= test266151307()
                        require (32 * mem[_3243 + mem[_3243]]) + 32 >= 0 and _3243 + ceil32(return_data.size) + (32 * mem[_3243 + mem[_3243]]) + 32 <= test266151307()
                        mem[64] = _3243 + ceil32(return_data.size) + (32 * mem[_3243 + mem[_3243]]) + 32
                        mem[_3243 + ceil32(return_data.size)] = _3291
                        require return_data.size >= _3267 + (32 * _3291) + 32
                        mem[_3243 + ceil32(return_data.size) + 32 len 32 * _3291] = mem[_3243 + _3267 + 32 len 32 * _3291]
                        require _3291 - 1 < _3291
                        _4611 = mem[(32 * _3291 - 1) + _3243 + ceil32(return_data.size) + 32]
                        if not mem[(32 * _3291 - 1) + _3243 + ceil32(return_data.size) + 32]:
                            _4659 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4659] = 26
                            mem[_4659 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4923 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4971 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4971] = mem[_4923]
                            mem[_4971 + 32] = mem[_4923 + 32]
                            mem[_4971 + 64] = mem[_4923 + 64]
                            mem[_4971 + 96] = mem[_4923 + 96]
                            mem[_4971 + 128] = mem[_4923 + 128]
                            mem[_4971 + 160] = mem[_4923 + 160]
                            mem[_4971 + 192] = mem[_4923 + 192]
                            if mem[_4971 + 192] <= ext_call.return_data[0]:
                                return (ext_call.return_data[0] - mem[_4971 + 192])
                        else:
                            if 9 * mem[(32 * _3291 - 1) + _3243 + ceil32(return_data.size) + 32] / mem[(32 * _3291 - 1) + _3243 + ceil32(return_data.size) + 32] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4695 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4695] = 26
                            mem[_4695 + 32] = 'SafeMath: division by zero'
                            if (9 * _4611 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4947 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4995 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4995] = mem[_4947]
                            mem[_4995 + 32] = mem[_4947 + 32]
                            mem[_4995 + 64] = mem[_4947 + 64]
                            mem[_4995 + 96] = mem[_4947 + 96]
                            mem[_4995 + 128] = mem[_4947 + 128]
                            mem[_4995 + 160] = mem[_4947 + 160]
                            mem[_4995 + 192] = mem[_4947 + 192]
                            if mem[_4995 + 192] <= (9 * _4611 / 10) + ext_call.return_data[0]:
                                return ((9 * _4611 / 10) + ext_call.return_data[0] - mem[_4995 + 192])
                else:
                    if stor13 == wantAddress:
                        _1651 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1651]
                        mem[_1651 + 32] = stor17
                        require 1 < mem[_1651]
                        if stor13 == wantAddress:
                            mem[_1651 + 64] = wantAddress
                            mem[_1651 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1651 + 100] = _1633 + _28
                            mem[_1651 + 132] = 64
                            mem[_1651 + 164] = mem[_1651]
                            idx = 0
                            s = _1651 + 32
                            t = _1651 + 196
                            while idx < mem[_1651]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1651 + (32 * mem[_1651]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3246 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3270 = mem[_3246]
                            require mem[_3246] <= test266151307()
                            require _3246 + return_data.size > _3246 + mem[_3246] + 31
                            _3294 = mem[_3246 + mem[_3246]]
                            require mem[_3246 + mem[_3246]] <= test266151307()
                            require (32 * mem[_3246 + mem[_3246]]) + 32 >= 0 and _3246 + ceil32(return_data.size) + (32 * mem[_3246 + mem[_3246]]) + 32 <= test266151307()
                            mem[64] = _3246 + ceil32(return_data.size) + (32 * mem[_3246 + mem[_3246]]) + 32
                            mem[_3246 + ceil32(return_data.size)] = _3294
                            require return_data.size >= _3270 + (32 * _3294) + 32
                            mem[_3246 + ceil32(return_data.size) + 32 len 32 * _3294] = mem[_3246 + _3270 + 32 len 32 * _3294]
                            require _3294 - 1 < _3294
                            _4614 = mem[(32 * _3294 - 1) + _3246 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3294 - 1) + _3246 + ceil32(return_data.size) + 32]:
                                _4662 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4662] = 26
                                mem[_4662 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4926 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4974 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4974] = mem[_4926]
                                mem[_4974 + 32] = mem[_4926 + 32]
                                mem[_4974 + 64] = mem[_4926 + 64]
                                mem[_4974 + 96] = mem[_4926 + 96]
                                mem[_4974 + 128] = mem[_4926 + 128]
                                mem[_4974 + 160] = mem[_4926 + 160]
                                mem[_4974 + 192] = mem[_4926 + 192]
                                if mem[_4974 + 192] <= ext_call.return_data[0]:
                                    return (ext_call.return_data[0] - mem[_4974 + 192])
                            else:
                                if 9 * mem[(32 * _3294 - 1) + _3246 + ceil32(return_data.size) + 32] / mem[(32 * _3294 - 1) + _3246 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4701 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4701] = 26
                                mem[_4701 + 32] = 'SafeMath: division by zero'
                                if (9 * _4614 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4950 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4998 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4998] = mem[_4950]
                                mem[_4998 + 32] = mem[_4950 + 32]
                                mem[_4998 + 64] = mem[_4950 + 64]
                                mem[_4998 + 96] = mem[_4950 + 96]
                                mem[_4998 + 128] = mem[_4950 + 128]
                                mem[_4998 + 160] = mem[_4950 + 160]
                                mem[_4998 + 192] = mem[_4950 + 192]
                                if mem[_4998 + 192] <= (9 * _4614 / 10) + ext_call.return_data[0]:
                                    return ((9 * _4614 / 10) + ext_call.return_data[0] - mem[_4998 + 192])
                        else:
                            mem[_1651 + 64] = stor13
                            require 2 < mem[_1651]
                            mem[_1651 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1651 + 100] = _1633 + _28
                            mem[_1651 + 132] = 64
                            mem[_1651 + 164] = mem[_1651]
                            idx = 0
                            s = _1651 + 32
                            t = _1651 + 196
                            while idx < mem[_1651]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1651 + (32 * mem[_1651]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3245 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3269 = mem[_3245]
                            require mem[_3245] <= test266151307()
                            require _3245 + return_data.size > _3245 + mem[_3245] + 31
                            _3293 = mem[_3245 + mem[_3245]]
                            require mem[_3245 + mem[_3245]] <= test266151307()
                            require (32 * mem[_3245 + mem[_3245]]) + 32 >= 0 and _3245 + ceil32(return_data.size) + (32 * mem[_3245 + mem[_3245]]) + 32 <= test266151307()
                            mem[64] = _3245 + ceil32(return_data.size) + (32 * mem[_3245 + mem[_3245]]) + 32
                            mem[_3245 + ceil32(return_data.size)] = _3293
                            require return_data.size >= _3269 + (32 * _3293) + 32
                            mem[_3245 + ceil32(return_data.size) + 32 len 32 * _3293] = mem[_3245 + _3269 + 32 len 32 * _3293]
                            require _3293 - 1 < _3293
                            _4613 = mem[(32 * _3293 - 1) + _3245 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3293 - 1) + _3245 + ceil32(return_data.size) + 32]:
                                _4661 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4661] = 26
                                mem[_4661 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4925 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4973 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4973] = mem[_4925]
                                mem[_4973 + 32] = mem[_4925 + 32]
                                mem[_4973 + 64] = mem[_4925 + 64]
                                mem[_4973 + 96] = mem[_4925 + 96]
                                mem[_4973 + 128] = mem[_4925 + 128]
                                mem[_4973 + 160] = mem[_4925 + 160]
                                mem[_4973 + 192] = mem[_4925 + 192]
                                if mem[_4973 + 192] <= ext_call.return_data[0]:
                                    return (ext_call.return_data[0] - mem[_4973 + 192])
                            else:
                                if 9 * mem[(32 * _3293 - 1) + _3245 + ceil32(return_data.size) + 32] / mem[(32 * _3293 - 1) + _3245 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4699 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4699] = 26
                                mem[_4699 + 32] = 'SafeMath: division by zero'
                                if (9 * _4613 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4949 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4997 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4997] = mem[_4949]
                                mem[_4997 + 32] = mem[_4949 + 32]
                                mem[_4997 + 64] = mem[_4949 + 64]
                                mem[_4997 + 96] = mem[_4949 + 96]
                                mem[_4997 + 128] = mem[_4949 + 128]
                                mem[_4997 + 160] = mem[_4949 + 160]
                                mem[_4997 + 192] = mem[_4949 + 192]
                                if mem[_4997 + 192] <= (9 * _4613 / 10) + ext_call.return_data[0]:
                                    return ((9 * _4613 / 10) + ext_call.return_data[0] - mem[_4997 + 192])
                    else:
                        _1652 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_1652 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[_1652]
                        mem[_1652 + 32] = stor17
                        require 1 < mem[_1652]
                        if stor13 == wantAddress:
                            mem[_1652 + 64] = wantAddress
                            mem[_1652 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1652 + 132] = _1633 + _28
                            mem[_1652 + 164] = 64
                            mem[_1652 + 196] = mem[_1652]
                            idx = 0
                            s = _1652 + 32
                            t = _1652 + 228
                            while idx < mem[_1652]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1652 + (32 * mem[_1652]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3248 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3272 = mem[_3248]
                            require mem[_3248] <= test266151307()
                            require _3248 + return_data.size > _3248 + mem[_3248] + 31
                            _3296 = mem[_3248 + mem[_3248]]
                            require mem[_3248 + mem[_3248]] <= test266151307()
                            require (32 * mem[_3248 + mem[_3248]]) + 32 >= 0 and _3248 + ceil32(return_data.size) + (32 * mem[_3248 + mem[_3248]]) + 32 <= test266151307()
                            mem[64] = _3248 + ceil32(return_data.size) + (32 * mem[_3248 + mem[_3248]]) + 32
                            mem[_3248 + ceil32(return_data.size)] = _3296
                            require return_data.size >= _3272 + (32 * _3296) + 32
                            mem[_3248 + ceil32(return_data.size) + 32 len 32 * _3296] = mem[_3248 + _3272 + 32 len 32 * _3296]
                            require _3296 - 1 < _3296
                            _4616 = mem[(32 * _3296 - 1) + _3248 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3296 - 1) + _3248 + ceil32(return_data.size) + 32]:
                                _4664 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4664] = 26
                                mem[_4664 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4928 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4976 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4976] = mem[_4928]
                                mem[_4976 + 32] = mem[_4928 + 32]
                                mem[_4976 + 64] = mem[_4928 + 64]
                                mem[_4976 + 96] = mem[_4928 + 96]
                                mem[_4976 + 128] = mem[_4928 + 128]
                                mem[_4976 + 160] = mem[_4928 + 160]
                                mem[_4976 + 192] = mem[_4928 + 192]
                                if mem[_4976 + 192] <= ext_call.return_data[0]:
                                    return (ext_call.return_data[0] - mem[_4976 + 192])
                            else:
                                if 9 * mem[(32 * _3296 - 1) + _3248 + ceil32(return_data.size) + 32] / mem[(32 * _3296 - 1) + _3248 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4705 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4705] = 26
                                mem[_4705 + 32] = 'SafeMath: division by zero'
                                if (9 * _4616 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4952 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _5000 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_5000] = mem[_4952]
                                mem[_5000 + 32] = mem[_4952 + 32]
                                mem[_5000 + 64] = mem[_4952 + 64]
                                mem[_5000 + 96] = mem[_4952 + 96]
                                mem[_5000 + 128] = mem[_4952 + 128]
                                mem[_5000 + 160] = mem[_4952 + 160]
                                mem[_5000 + 192] = mem[_4952 + 192]
                                if mem[_5000 + 192] <= (9 * _4616 / 10) + ext_call.return_data[0]:
                                    return ((9 * _4616 / 10) + ext_call.return_data[0] - mem[_5000 + 192])
                        else:
                            mem[_1652 + 64] = stor13
                            require 2 < mem[_1652]
                            mem[_1652 + 96] = wantAddress
                            mem[_1652 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1652 + 132] = _1633 + _28
                            mem[_1652 + 164] = 64
                            mem[_1652 + 196] = mem[_1652]
                            idx = 0
                            s = _1652 + 32
                            t = _1652 + 228
                            while idx < mem[_1652]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1652 + (32 * mem[_1652]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3247 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3271 = mem[_3247]
                            require mem[_3247] <= test266151307()
                            require _3247 + return_data.size > _3247 + mem[_3247] + 31
                            _3295 = mem[_3247 + mem[_3247]]
                            require mem[_3247 + mem[_3247]] <= test266151307()
                            require (32 * mem[_3247 + mem[_3247]]) + 32 >= 0 and _3247 + ceil32(return_data.size) + (32 * mem[_3247 + mem[_3247]]) + 32 <= test266151307()
                            mem[64] = _3247 + ceil32(return_data.size) + (32 * mem[_3247 + mem[_3247]]) + 32
                            mem[_3247 + ceil32(return_data.size)] = _3295
                            require return_data.size >= _3271 + (32 * _3295) + 32
                            mem[_3247 + ceil32(return_data.size) + 32 len 32 * _3295] = mem[_3247 + _3271 + 32 len 32 * _3295]
                            require _3295 - 1 < _3295
                            _4615 = mem[(32 * _3295 - 1) + _3247 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3295 - 1) + _3247 + ceil32(return_data.size) + 32]:
                                _4663 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4663] = 26
                                mem[_4663 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4927 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4975 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4975] = mem[_4927]
                                mem[_4975 + 32] = mem[_4927 + 32]
                                mem[_4975 + 64] = mem[_4927 + 64]
                                mem[_4975 + 96] = mem[_4927 + 96]
                                mem[_4975 + 128] = mem[_4927 + 128]
                                mem[_4975 + 160] = mem[_4927 + 160]
                                mem[_4975 + 192] = mem[_4927 + 192]
                                if mem[_4975 + 192] <= ext_call.return_data[0]:
                                    return (ext_call.return_data[0] - mem[_4975 + 192])
                            else:
                                if 9 * mem[(32 * _3295 - 1) + _3247 + ceil32(return_data.size) + 32] / mem[(32 * _3295 - 1) + _3247 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4703 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4703] = 26
                                mem[_4703 + 32] = 'SafeMath: division by zero'
                                if (9 * _4615 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4951 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4999 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4999] = mem[_4951]
                                mem[_4999 + 32] = mem[_4951 + 32]
                                mem[_4999 + 64] = mem[_4951 + 64]
                                mem[_4999 + 96] = mem[_4951 + 96]
                                mem[_4999 + 128] = mem[_4951 + 128]
                                mem[_4999 + 160] = mem[_4951 + 160]
                                mem[_4999 + 192] = mem[_4951 + 192]
                                if mem[_4999 + 192] <= (9 * _4615 / 10) + ext_call.return_data[0]:
                                    return ((9 * _4615 / 10) + ext_call.return_data[0] - mem[_4999 + 192])
        else:
            mem[_35 + (6 * ceil32(return_data.size)) + 128] = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1630 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1634 = mem[_1630]
            if mem[_1630] + _28 < _28:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_1630] + _28:
                _1662 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1662] = 26
                mem[_1662 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).strategies(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1826 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _1866 = mem[64]
                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                mem[64] = mem[64] + 288
                mem[_1866] = mem[_1826]
                mem[_1866 + 32] = mem[_1826 + 32]
                mem[_1866 + 64] = mem[_1826 + 64]
                mem[_1866 + 96] = mem[_1826 + 96]
                mem[_1866 + 128] = mem[_1826 + 128]
                mem[_1866 + 160] = mem[_1826 + 160]
                mem[_1866 + 192] = mem[_1826 + 192]
                if mem[_1866 + 192] <= ext_call.return_data[0]:
                    return (ext_call.return_data[0] - mem[_1866 + 192])
            else:
                if stor13 == stor17:
                    _1646 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1646]
                    mem[_1646 + 32] = stor17
                    require 1 < mem[_1646]
                    if stor13 == stor17:
                        mem[_1646 + 64] = wantAddress
                        mem[_1646 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1646 + 100] = _1634 + _28
                        mem[_1646 + 132] = 64
                        mem[_1646 + 164] = mem[_1646]
                        idx = 0
                        s = _1646 + 32
                        t = _1646 + 196
                        while idx < mem[_1646]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1646 + (32 * mem[_1646]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3250 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3274 = mem[_3250]
                        require mem[_3250] <= test266151307()
                        require _3250 + return_data.size > _3250 + mem[_3250] + 31
                        _3298 = mem[_3250 + mem[_3250]]
                        require mem[_3250 + mem[_3250]] <= test266151307()
                        require (32 * mem[_3250 + mem[_3250]]) + 32 >= 0 and _3250 + ceil32(return_data.size) + (32 * mem[_3250 + mem[_3250]]) + 32 <= test266151307()
                        mem[64] = _3250 + ceil32(return_data.size) + (32 * mem[_3250 + mem[_3250]]) + 32
                        mem[_3250 + ceil32(return_data.size)] = _3298
                        require return_data.size >= _3274 + (32 * _3298) + 32
                        mem[_3250 + ceil32(return_data.size) + 32 len 32 * _3298] = mem[_3250 + _3274 + 32 len 32 * _3298]
                        require _3298 - 1 < _3298
                        _4618 = mem[(32 * _3298 - 1) + _3250 + ceil32(return_data.size) + 32]
                        if not mem[(32 * _3298 - 1) + _3250 + ceil32(return_data.size) + 32]:
                            _4666 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4666] = 26
                            mem[_4666 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4930 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4978 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4978] = mem[_4930]
                            mem[_4978 + 32] = mem[_4930 + 32]
                            mem[_4978 + 64] = mem[_4930 + 64]
                            mem[_4978 + 96] = mem[_4930 + 96]
                            mem[_4978 + 128] = mem[_4930 + 128]
                            mem[_4978 + 160] = mem[_4930 + 160]
                            mem[_4978 + 192] = mem[_4930 + 192]
                            if mem[_4978 + 192] <= ext_call.return_data[0]:
                                return (ext_call.return_data[0] - mem[_4978 + 192])
                        else:
                            if 9 * mem[(32 * _3298 - 1) + _3250 + ceil32(return_data.size) + 32] / mem[(32 * _3298 - 1) + _3250 + ceil32(return_data.size) + 32] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4709 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4709] = 26
                            mem[_4709 + 32] = 'SafeMath: division by zero'
                            if (9 * _4618 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4954 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _5002 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_5002] = mem[_4954]
                            mem[_5002 + 32] = mem[_4954 + 32]
                            mem[_5002 + 64] = mem[_4954 + 64]
                            mem[_5002 + 96] = mem[_4954 + 96]
                            mem[_5002 + 128] = mem[_4954 + 128]
                            mem[_5002 + 160] = mem[_4954 + 160]
                            mem[_5002 + 192] = mem[_4954 + 192]
                            if mem[_5002 + 192] <= (9 * _4618 / 10) + ext_call.return_data[0]:
                                return ((9 * _4618 / 10) + ext_call.return_data[0] - mem[_5002 + 192])
                    else:
                        mem[_1646 + 64] = stor13
                        require 2 < mem[_1646]
                        mem[_1646 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1646 + 100] = _1634 + _28
                        mem[_1646 + 132] = 64
                        mem[_1646 + 164] = mem[_1646]
                        idx = 0
                        s = _1646 + 32
                        t = _1646 + 196
                        while idx < mem[_1646]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1646 + (32 * mem[_1646]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3249 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3273 = mem[_3249]
                        require mem[_3249] <= test266151307()
                        require _3249 + return_data.size > _3249 + mem[_3249] + 31
                        _3297 = mem[_3249 + mem[_3249]]
                        require mem[_3249 + mem[_3249]] <= test266151307()
                        require (32 * mem[_3249 + mem[_3249]]) + 32 >= 0 and _3249 + ceil32(return_data.size) + (32 * mem[_3249 + mem[_3249]]) + 32 <= test266151307()
                        mem[64] = _3249 + ceil32(return_data.size) + (32 * mem[_3249 + mem[_3249]]) + 32
                        mem[_3249 + ceil32(return_data.size)] = _3297
                        require return_data.size >= _3273 + (32 * _3297) + 32
                        mem[_3249 + ceil32(return_data.size) + 32 len 32 * _3297] = mem[_3249 + _3273 + 32 len 32 * _3297]
                        require _3297 - 1 < _3297
                        _4617 = mem[(32 * _3297 - 1) + _3249 + ceil32(return_data.size) + 32]
                        if not mem[(32 * _3297 - 1) + _3249 + ceil32(return_data.size) + 32]:
                            _4665 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4665] = 26
                            mem[_4665 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4929 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4977 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4977] = mem[_4929]
                            mem[_4977 + 32] = mem[_4929 + 32]
                            mem[_4977 + 64] = mem[_4929 + 64]
                            mem[_4977 + 96] = mem[_4929 + 96]
                            mem[_4977 + 128] = mem[_4929 + 128]
                            mem[_4977 + 160] = mem[_4929 + 160]
                            mem[_4977 + 192] = mem[_4929 + 192]
                            if mem[_4977 + 192] <= ext_call.return_data[0]:
                                return (ext_call.return_data[0] - mem[_4977 + 192])
                        else:
                            if 9 * mem[(32 * _3297 - 1) + _3249 + ceil32(return_data.size) + 32] / mem[(32 * _3297 - 1) + _3249 + ceil32(return_data.size) + 32] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4707 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4707] = 26
                            mem[_4707 + 32] = 'SafeMath: division by zero'
                            if (9 * _4617 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _5001 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_5001] = mem[_4953]
                            mem[_5001 + 32] = mem[_4953 + 32]
                            mem[_5001 + 64] = mem[_4953 + 64]
                            mem[_5001 + 96] = mem[_4953 + 96]
                            mem[_5001 + 128] = mem[_4953 + 128]
                            mem[_5001 + 160] = mem[_4953 + 160]
                            mem[_5001 + 192] = mem[_4953 + 192]
                            if mem[_5001 + 192] <= (9 * _4617 / 10) + ext_call.return_data[0]:
                                return ((9 * _4617 / 10) + ext_call.return_data[0] - mem[_5001 + 192])
                else:
                    if stor13 == wantAddress:
                        _1653 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1653]
                        mem[_1653 + 32] = stor17
                        require 1 < mem[_1653]
                        if stor13 == wantAddress:
                            mem[_1653 + 64] = wantAddress
                            mem[_1653 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1653 + 100] = _1634 + _28
                            mem[_1653 + 132] = 64
                            mem[_1653 + 164] = mem[_1653]
                            idx = 0
                            s = _1653 + 32
                            t = _1653 + 196
                            while idx < mem[_1653]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1653 + (32 * mem[_1653]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3252 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3276 = mem[_3252]
                            require mem[_3252] <= test266151307()
                            require _3252 + return_data.size > _3252 + mem[_3252] + 31
                            _3300 = mem[_3252 + mem[_3252]]
                            require mem[_3252 + mem[_3252]] <= test266151307()
                            require (32 * mem[_3252 + mem[_3252]]) + 32 >= 0 and _3252 + ceil32(return_data.size) + (32 * mem[_3252 + mem[_3252]]) + 32 <= test266151307()
                            mem[64] = _3252 + ceil32(return_data.size) + (32 * mem[_3252 + mem[_3252]]) + 32
                            mem[_3252 + ceil32(return_data.size)] = _3300
                            require return_data.size >= _3276 + (32 * _3300) + 32
                            mem[_3252 + ceil32(return_data.size) + 32 len 32 * _3300] = mem[_3252 + _3276 + 32 len 32 * _3300]
                            require _3300 - 1 < _3300
                            _4620 = mem[(32 * _3300 - 1) + _3252 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3300 - 1) + _3252 + ceil32(return_data.size) + 32]:
                                _4668 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4668] = 26
                                mem[_4668 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4932 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4980 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4980] = mem[_4932]
                                mem[_4980 + 32] = mem[_4932 + 32]
                                mem[_4980 + 64] = mem[_4932 + 64]
                                mem[_4980 + 96] = mem[_4932 + 96]
                                mem[_4980 + 128] = mem[_4932 + 128]
                                mem[_4980 + 160] = mem[_4932 + 160]
                                mem[_4980 + 192] = mem[_4932 + 192]
                                if mem[_4980 + 192] <= ext_call.return_data[0]:
                                    return (ext_call.return_data[0] - mem[_4980 + 192])
                            else:
                                if 9 * mem[(32 * _3300 - 1) + _3252 + ceil32(return_data.size) + 32] / mem[(32 * _3300 - 1) + _3252 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4713 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4713] = 26
                                mem[_4713 + 32] = 'SafeMath: division by zero'
                                if (9 * _4620 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4956 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _5004 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_5004] = mem[_4956]
                                mem[_5004 + 32] = mem[_4956 + 32]
                                mem[_5004 + 64] = mem[_4956 + 64]
                                mem[_5004 + 96] = mem[_4956 + 96]
                                mem[_5004 + 128] = mem[_4956 + 128]
                                mem[_5004 + 160] = mem[_4956 + 160]
                                mem[_5004 + 192] = mem[_4956 + 192]
                                if mem[_5004 + 192] <= (9 * _4620 / 10) + ext_call.return_data[0]:
                                    return ((9 * _4620 / 10) + ext_call.return_data[0] - mem[_5004 + 192])
                        else:
                            mem[_1653 + 64] = stor13
                            require 2 < mem[_1653]
                            mem[_1653 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1653 + 100] = _1634 + _28
                            mem[_1653 + 132] = 64
                            mem[_1653 + 164] = mem[_1653]
                            idx = 0
                            s = _1653 + 32
                            t = _1653 + 196
                            while idx < mem[_1653]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1653 + (32 * mem[_1653]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3251 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3275 = mem[_3251]
                            require mem[_3251] <= test266151307()
                            require _3251 + return_data.size > _3251 + mem[_3251] + 31
                            _3299 = mem[_3251 + mem[_3251]]
                            require mem[_3251 + mem[_3251]] <= test266151307()
                            require (32 * mem[_3251 + mem[_3251]]) + 32 >= 0 and _3251 + ceil32(return_data.size) + (32 * mem[_3251 + mem[_3251]]) + 32 <= test266151307()
                            mem[64] = _3251 + ceil32(return_data.size) + (32 * mem[_3251 + mem[_3251]]) + 32
                            mem[_3251 + ceil32(return_data.size)] = _3299
                            require return_data.size >= _3275 + (32 * _3299) + 32
                            mem[_3251 + ceil32(return_data.size) + 32 len 32 * _3299] = mem[_3251 + _3275 + 32 len 32 * _3299]
                            require _3299 - 1 < _3299
                            _4619 = mem[(32 * _3299 - 1) + _3251 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3299 - 1) + _3251 + ceil32(return_data.size) + 32]:
                                _4667 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4667] = 26
                                mem[_4667 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4931 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4979 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4979] = mem[_4931]
                                mem[_4979 + 32] = mem[_4931 + 32]
                                mem[_4979 + 64] = mem[_4931 + 64]
                                mem[_4979 + 96] = mem[_4931 + 96]
                                mem[_4979 + 128] = mem[_4931 + 128]
                                mem[_4979 + 160] = mem[_4931 + 160]
                                mem[_4979 + 192] = mem[_4931 + 192]
                                if mem[_4979 + 192] <= ext_call.return_data[0]:
                                    return (ext_call.return_data[0] - mem[_4979 + 192])
                            else:
                                if 9 * mem[(32 * _3299 - 1) + _3251 + ceil32(return_data.size) + 32] / mem[(32 * _3299 - 1) + _3251 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4711 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4711] = 26
                                mem[_4711 + 32] = 'SafeMath: division by zero'
                                if (9 * _4619 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4955 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _5003 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_5003] = mem[_4955]
                                mem[_5003 + 32] = mem[_4955 + 32]
                                mem[_5003 + 64] = mem[_4955 + 64]
                                mem[_5003 + 96] = mem[_4955 + 96]
                                mem[_5003 + 128] = mem[_4955 + 128]
                                mem[_5003 + 160] = mem[_4955 + 160]
                                mem[_5003 + 192] = mem[_4955 + 192]
                                if mem[_5003 + 192] <= (9 * _4619 / 10) + ext_call.return_data[0]:
                                    return ((9 * _4619 / 10) + ext_call.return_data[0] - mem[_5003 + 192])
                    else:
                        _1654 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_1654 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[_1654]
                        mem[_1654 + 32] = stor17
                        require 1 < mem[_1654]
                        if stor13 == wantAddress:
                            mem[_1654 + 64] = wantAddress
                            mem[_1654 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1654 + 132] = _1634 + _28
                            mem[_1654 + 164] = 64
                            mem[_1654 + 196] = mem[_1654]
                            idx = 0
                            s = _1654 + 32
                            t = _1654 + 228
                            while idx < mem[_1654]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1654 + (32 * mem[_1654]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3254 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3278 = mem[_3254]
                            require mem[_3254] <= test266151307()
                            require _3254 + return_data.size > _3254 + mem[_3254] + 31
                            _3302 = mem[_3254 + mem[_3254]]
                            require mem[_3254 + mem[_3254]] <= test266151307()
                            require (32 * mem[_3254 + mem[_3254]]) + 32 >= 0 and _3254 + ceil32(return_data.size) + (32 * mem[_3254 + mem[_3254]]) + 32 <= test266151307()
                            mem[64] = _3254 + ceil32(return_data.size) + (32 * mem[_3254 + mem[_3254]]) + 32
                            mem[_3254 + ceil32(return_data.size)] = _3302
                            require return_data.size >= _3278 + (32 * _3302) + 32
                            mem[_3254 + ceil32(return_data.size) + 32 len 32 * _3302] = mem[_3254 + _3278 + 32 len 32 * _3302]
                            require _3302 - 1 < _3302
                            _4622 = mem[(32 * _3302 - 1) + _3254 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3302 - 1) + _3254 + ceil32(return_data.size) + 32]:
                                _4670 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4670] = 26
                                mem[_4670 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4934 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4982 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4982] = mem[_4934]
                                mem[_4982 + 32] = mem[_4934 + 32]
                                mem[_4982 + 64] = mem[_4934 + 64]
                                mem[_4982 + 96] = mem[_4934 + 96]
                                mem[_4982 + 128] = mem[_4934 + 128]
                                mem[_4982 + 160] = mem[_4934 + 160]
                                mem[_4982 + 192] = mem[_4934 + 192]
                                if mem[_4982 + 192] <= ext_call.return_data[0]:
                                    return (ext_call.return_data[0] - mem[_4982 + 192])
                            else:
                                if 9 * mem[(32 * _3302 - 1) + _3254 + ceil32(return_data.size) + 32] / mem[(32 * _3302 - 1) + _3254 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4717 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4717] = 26
                                mem[_4717 + 32] = 'SafeMath: division by zero'
                                if (9 * _4622 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4958 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _5006 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_5006] = mem[_4958]
                                mem[_5006 + 32] = mem[_4958 + 32]
                                mem[_5006 + 64] = mem[_4958 + 64]
                                mem[_5006 + 96] = mem[_4958 + 96]
                                mem[_5006 + 128] = mem[_4958 + 128]
                                mem[_5006 + 160] = mem[_4958 + 160]
                                mem[_5006 + 192] = mem[_4958 + 192]
                                if mem[_5006 + 192] <= (9 * _4622 / 10) + ext_call.return_data[0]:
                                    return ((9 * _4622 / 10) + ext_call.return_data[0] - mem[_5006 + 192])
                        else:
                            mem[_1654 + 64] = stor13
                            require 2 < mem[_1654]
                            mem[_1654 + 96] = wantAddress
                            mem[_1654 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1654 + 132] = _1634 + _28
                            mem[_1654 + 164] = 64
                            mem[_1654 + 196] = mem[_1654]
                            idx = 0
                            s = _1654 + 32
                            t = _1654 + 228
                            while idx < mem[_1654]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1654 + (32 * mem[_1654]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3253 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3277 = mem[_3253]
                            require mem[_3253] <= test266151307()
                            require _3253 + return_data.size > _3253 + mem[_3253] + 31
                            _3301 = mem[_3253 + mem[_3253]]
                            require mem[_3253 + mem[_3253]] <= test266151307()
                            require (32 * mem[_3253 + mem[_3253]]) + 32 >= 0 and _3253 + ceil32(return_data.size) + (32 * mem[_3253 + mem[_3253]]) + 32 <= test266151307()
                            mem[64] = _3253 + ceil32(return_data.size) + (32 * mem[_3253 + mem[_3253]]) + 32
                            mem[_3253 + ceil32(return_data.size)] = _3301
                            require return_data.size >= _3277 + (32 * _3301) + 32
                            mem[_3253 + ceil32(return_data.size) + 32 len 32 * _3301] = mem[_3253 + _3277 + 32 len 32 * _3301]
                            require _3301 - 1 < _3301
                            _4621 = mem[(32 * _3301 - 1) + _3253 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3301 - 1) + _3253 + ceil32(return_data.size) + 32]:
                                _4669 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4669] = 26
                                mem[_4669 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4933 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4981 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4981] = mem[_4933]
                                mem[_4981 + 32] = mem[_4933 + 32]
                                mem[_4981 + 64] = mem[_4933 + 64]
                                mem[_4981 + 96] = mem[_4933 + 96]
                                mem[_4981 + 128] = mem[_4933 + 128]
                                mem[_4981 + 160] = mem[_4933 + 160]
                                mem[_4981 + 192] = mem[_4933 + 192]
                                if mem[_4981 + 192] <= ext_call.return_data[0]:
                                    return (ext_call.return_data[0] - mem[_4981 + 192])
                            else:
                                if 9 * mem[(32 * _3301 - 1) + _3253 + ceil32(return_data.size) + 32] / mem[(32 * _3301 - 1) + _3253 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4715 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4715] = 26
                                mem[_4715 + 32] = 'SafeMath: division by zero'
                                if (9 * _4621 / 10) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4957 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _5005 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_5005] = mem[_4957]
                                mem[_5005 + 32] = mem[_4957 + 32]
                                mem[_5005 + 64] = mem[_4957 + 64]
                                mem[_5005 + 96] = mem[_4957 + 96]
                                mem[_5005 + 128] = mem[_4957 + 128]
                                mem[_5005 + 160] = mem[_4957 + 160]
                                mem[_5005 + 192] = mem[_4957 + 192]
                                if mem[_5005 + 192] <= (9 * _4621 / 10) + ext_call.return_data[0]:
                                    return ((9 * _4621 / 10) + ext_call.return_data[0] - mem[_5005 + 192])
    else:
        require ext_code.size(poolAddress)
        staticcall poolAddress.0x907448ed with:
                gas gas_remaining wei
               args wantAddress, 2 * ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[64] == bool(ext_call.return_data[64])
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[(6 * ceil32(return_data.size)) + 96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 100] = uint256(stor21.field_0)
        mem[(6 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(address(stor15))
        staticcall address(stor15).pendingTokens(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args uint256(stor21.field_0), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 96
        require return_data.size >= 128
        _38 = mem[(6 * ceil32(return_data.size)) + 96 len 4], Mask(224, 0, stor21.field_32)
        require uint32(stor21.field_0), address(this.address) << 64 == Mask(96, 0, this.address) << 64
        _40 = 0, mem[(6 * ceil32(return_data.size)) + 164 len 28]
        require 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] <= test266151307()
        require (6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
        _42 = mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]
        require mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96] <= test266151307()
        require ceil32(mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]) + 32 >= 0 and (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]) + 128 <= test266151307()
        mem[64] = (7 * ceil32(return_data.size)) + ceil32(mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]) + 128
        mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + 0, mem[(6 * ceil32(return_data.size)) + 164 len 28] + 96]
        require _40 + _42 + 32 <= return_data.size
        mem[(7 * ceil32(return_data.size)) + 128 len ceil32(_42)] = mem[(6 * ceil32(return_data.size)) + _40 + 128 len ceil32(_42)]
        if ceil32(_42) <= _42:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1631 = mem[_1627]
            if mem[_1627] + _38 < _38:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_1627] + _38:
                _1656 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1656] = 26
                mem[_1656 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).strategies(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1814 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _1854 = mem[64]
                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                mem[64] = mem[64] + 288
                mem[_1854] = mem[_1814]
                mem[_1854 + 32] = mem[_1814 + 32]
                mem[_1854 + 64] = mem[_1814 + 64]
                mem[_1854 + 96] = mem[_1814 + 96]
                mem[_1854 + 128] = mem[_1814 + 128]
                mem[_1854 + 160] = mem[_1814 + 160]
                mem[_1854 + 192] = mem[_1814 + 192]
                if mem[_1854 + 192] <= 2 * ext_call.return_data[0]:
                    return ((2 * ext_call.return_data[0]) - mem[_1854 + 192])
            else:
                if stor13 == stor17:
                    _1643 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1643]
                    mem[_1643 + 32] = stor17
                    require 1 < mem[_1643]
                    if stor13 == stor17:
                        mem[_1643 + 64] = wantAddress
                        mem[_1643 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1643 + 100] = _1631 + _38
                        mem[_1643 + 132] = 64
                        mem[_1643 + 164] = mem[_1643]
                        idx = 0
                        s = _1643 + 32
                        t = _1643 + 196
                        while idx < mem[_1643]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1643 + (32 * mem[_1643]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3232 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3256 = mem[_3232]
                        require mem[_3232] <= test266151307()
                        require _3232 + return_data.size > _3232 + mem[_3232] + 31
                        _3280 = mem[_3232 + mem[_3232]]
                        require mem[_3232 + mem[_3232]] <= test266151307()
                        require (32 * mem[_3232 + mem[_3232]]) + 32 >= 0 and _3232 + ceil32(return_data.size) + (32 * mem[_3232 + mem[_3232]]) + 32 <= test266151307()
                        mem[64] = _3232 + ceil32(return_data.size) + (32 * mem[_3232 + mem[_3232]]) + 32
                        mem[_3232 + ceil32(return_data.size)] = _3280
                        require return_data.size >= _3256 + (32 * _3280) + 32
                        mem[_3232 + ceil32(return_data.size) + 32 len 32 * _3280] = mem[_3232 + _3256 + 32 len 32 * _3280]
                        require _3280 - 1 < _3280
                        _4600 = mem[(32 * _3280 - 1) + _3232 + ceil32(return_data.size) + 32]
                        if not mem[(32 * _3280 - 1) + _3232 + ceil32(return_data.size) + 32]:
                            _4648 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4648] = 26
                            mem[_4648 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4912 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4960 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4960] = mem[_4912]
                            mem[_4960 + 32] = mem[_4912 + 32]
                            mem[_4960 + 64] = mem[_4912 + 64]
                            mem[_4960 + 96] = mem[_4912 + 96]
                            mem[_4960 + 128] = mem[_4912 + 128]
                            mem[_4960 + 160] = mem[_4912 + 160]
                            mem[_4960 + 192] = mem[_4912 + 192]
                            if mem[_4960 + 192] <= 2 * ext_call.return_data[0]:
                                return ((2 * ext_call.return_data[0]) - mem[_4960 + 192])
                        else:
                            if 9 * mem[(32 * _3280 - 1) + _3232 + ceil32(return_data.size) + 32] / mem[(32 * _3280 - 1) + _3232 + ceil32(return_data.size) + 32] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4673 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4673] = 26
                            mem[_4673 + 32] = 'SafeMath: division by zero'
                            if 9 * _4600 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4936 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4984 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4984] = mem[_4936]
                            mem[_4984 + 32] = mem[_4936 + 32]
                            mem[_4984 + 64] = mem[_4936 + 64]
                            mem[_4984 + 96] = mem[_4936 + 96]
                            mem[_4984 + 128] = mem[_4936 + 128]
                            mem[_4984 + 160] = mem[_4936 + 160]
                            mem[_4984 + 192] = mem[_4936 + 192]
                            if mem[_4984 + 192] <= (9 * _4600 / 10) + (2 * ext_call.return_data[0]):
                                return ((9 * _4600 / 10) + (2 * ext_call.return_data[0]) - mem[_4984 + 192])
                    else:
                        mem[_1643 + 64] = stor13
                        require 2 < mem[_1643]
                        mem[_1643 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1643 + 100] = _1631 + _38
                        mem[_1643 + 132] = 64
                        mem[_1643 + 164] = mem[_1643]
                        idx = 0
                        s = _1643 + 32
                        t = _1643 + 196
                        while idx < mem[_1643]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1643 + (32 * mem[_1643]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3231 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3255 = mem[_3231]
                        require mem[_3231] <= test266151307()
                        require _3231 + return_data.size > _3231 + mem[_3231] + 31
                        _3279 = mem[_3231 + mem[_3231]]
                        require mem[_3231 + mem[_3231]] <= test266151307()
                        require (32 * mem[_3231 + mem[_3231]]) + 32 >= 0 and _3231 + ceil32(return_data.size) + (32 * mem[_3231 + mem[_3231]]) + 32 <= test266151307()
                        mem[64] = _3231 + ceil32(return_data.size) + (32 * mem[_3231 + mem[_3231]]) + 32
                        mem[_3231 + ceil32(return_data.size)] = _3279
                        require return_data.size >= _3255 + (32 * _3279) + 32
                        mem[_3231 + ceil32(return_data.size) + 32 len 32 * _3279] = mem[_3231 + _3255 + 32 len 32 * _3279]
                        require _3279 - 1 < _3279
                        _4599 = mem[(32 * _3279 - 1) + _3231 + ceil32(return_data.size) + 32]
                        if not mem[(32 * _3279 - 1) + _3231 + ceil32(return_data.size) + 32]:
                            _4647 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4647] = 26
                            mem[_4647 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4911 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4959 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4959] = mem[_4911]
                            mem[_4959 + 32] = mem[_4911 + 32]
                            mem[_4959 + 64] = mem[_4911 + 64]
                            mem[_4959 + 96] = mem[_4911 + 96]
                            mem[_4959 + 128] = mem[_4911 + 128]
                            mem[_4959 + 160] = mem[_4911 + 160]
                            mem[_4959 + 192] = mem[_4911 + 192]
                            if mem[_4959 + 192] <= 2 * ext_call.return_data[0]:
                                return ((2 * ext_call.return_data[0]) - mem[_4959 + 192])
                        else:
                            if 9 * mem[(32 * _3279 - 1) + _3231 + ceil32(return_data.size) + 32] / mem[(32 * _3279 - 1) + _3231 + ceil32(return_data.size) + 32] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4671 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4671] = 26
                            mem[_4671 + 32] = 'SafeMath: division by zero'
                            if 9 * _4599 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4935 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4983 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4983] = mem[_4935]
                            mem[_4983 + 32] = mem[_4935 + 32]
                            mem[_4983 + 64] = mem[_4935 + 64]
                            mem[_4983 + 96] = mem[_4935 + 96]
                            mem[_4983 + 128] = mem[_4935 + 128]
                            mem[_4983 + 160] = mem[_4935 + 160]
                            mem[_4983 + 192] = mem[_4935 + 192]
                            if mem[_4983 + 192] <= (9 * _4599 / 10) + (2 * ext_call.return_data[0]):
                                return ((9 * _4599 / 10) + (2 * ext_call.return_data[0]) - mem[_4983 + 192])
                else:
                    if stor13 == wantAddress:
                        _1647 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1647]
                        mem[_1647 + 32] = stor17
                        require 1 < mem[_1647]
                        if stor13 == wantAddress:
                            mem[_1647 + 64] = wantAddress
                            mem[_1647 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1647 + 100] = _1631 + _38
                            mem[_1647 + 132] = 64
                            mem[_1647 + 164] = mem[_1647]
                            idx = 0
                            s = _1647 + 32
                            t = _1647 + 196
                            while idx < mem[_1647]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1647 + (32 * mem[_1647]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3234 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3258 = mem[_3234]
                            require mem[_3234] <= test266151307()
                            require _3234 + return_data.size > _3234 + mem[_3234] + 31
                            _3282 = mem[_3234 + mem[_3234]]
                            require mem[_3234 + mem[_3234]] <= test266151307()
                            require (32 * mem[_3234 + mem[_3234]]) + 32 >= 0 and _3234 + ceil32(return_data.size) + (32 * mem[_3234 + mem[_3234]]) + 32 <= test266151307()
                            mem[64] = _3234 + ceil32(return_data.size) + (32 * mem[_3234 + mem[_3234]]) + 32
                            mem[_3234 + ceil32(return_data.size)] = _3282
                            require return_data.size >= _3258 + (32 * _3282) + 32
                            mem[_3234 + ceil32(return_data.size) + 32 len 32 * _3282] = mem[_3234 + _3258 + 32 len 32 * _3282]
                            require _3282 - 1 < _3282
                            _4602 = mem[(32 * _3282 - 1) + _3234 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3282 - 1) + _3234 + ceil32(return_data.size) + 32]:
                                _4650 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4650] = 26
                                mem[_4650 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4914 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4962 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4962] = mem[_4914]
                                mem[_4962 + 32] = mem[_4914 + 32]
                                mem[_4962 + 64] = mem[_4914 + 64]
                                mem[_4962 + 96] = mem[_4914 + 96]
                                mem[_4962 + 128] = mem[_4914 + 128]
                                mem[_4962 + 160] = mem[_4914 + 160]
                                mem[_4962 + 192] = mem[_4914 + 192]
                                if mem[_4962 + 192] <= 2 * ext_call.return_data[0]:
                                    return ((2 * ext_call.return_data[0]) - mem[_4962 + 192])
                            else:
                                if 9 * mem[(32 * _3282 - 1) + _3234 + ceil32(return_data.size) + 32] / mem[(32 * _3282 - 1) + _3234 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4677 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4677] = 26
                                mem[_4677 + 32] = 'SafeMath: division by zero'
                                if 9 * _4602 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4938 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4986 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4986] = mem[_4938]
                                mem[_4986 + 32] = mem[_4938 + 32]
                                mem[_4986 + 64] = mem[_4938 + 64]
                                mem[_4986 + 96] = mem[_4938 + 96]
                                mem[_4986 + 128] = mem[_4938 + 128]
                                mem[_4986 + 160] = mem[_4938 + 160]
                                mem[_4986 + 192] = mem[_4938 + 192]
                                if mem[_4986 + 192] <= (9 * _4602 / 10) + (2 * ext_call.return_data[0]):
                                    return ((9 * _4602 / 10) + (2 * ext_call.return_data[0]) - mem[_4986 + 192])
                        else:
                            mem[_1647 + 64] = stor13
                            require 2 < mem[_1647]
                            mem[_1647 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1647 + 100] = _1631 + _38
                            mem[_1647 + 132] = 64
                            mem[_1647 + 164] = mem[_1647]
                            idx = 0
                            s = _1647 + 32
                            t = _1647 + 196
                            while idx < mem[_1647]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1647 + (32 * mem[_1647]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3233 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3257 = mem[_3233]
                            require mem[_3233] <= test266151307()
                            require _3233 + return_data.size > _3233 + mem[_3233] + 31
                            _3281 = mem[_3233 + mem[_3233]]
                            require mem[_3233 + mem[_3233]] <= test266151307()
                            require (32 * mem[_3233 + mem[_3233]]) + 32 >= 0 and _3233 + ceil32(return_data.size) + (32 * mem[_3233 + mem[_3233]]) + 32 <= test266151307()
                            mem[64] = _3233 + ceil32(return_data.size) + (32 * mem[_3233 + mem[_3233]]) + 32
                            mem[_3233 + ceil32(return_data.size)] = _3281
                            require return_data.size >= _3257 + (32 * _3281) + 32
                            mem[_3233 + ceil32(return_data.size) + 32 len 32 * _3281] = mem[_3233 + _3257 + 32 len 32 * _3281]
                            require _3281 - 1 < _3281
                            _4601 = mem[(32 * _3281 - 1) + _3233 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3281 - 1) + _3233 + ceil32(return_data.size) + 32]:
                                _4649 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4649] = 26
                                mem[_4649 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4913 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4961 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4961] = mem[_4913]
                                mem[_4961 + 32] = mem[_4913 + 32]
                                mem[_4961 + 64] = mem[_4913 + 64]
                                mem[_4961 + 96] = mem[_4913 + 96]
                                mem[_4961 + 128] = mem[_4913 + 128]
                                mem[_4961 + 160] = mem[_4913 + 160]
                                mem[_4961 + 192] = mem[_4913 + 192]
                                if mem[_4961 + 192] <= 2 * ext_call.return_data[0]:
                                    return ((2 * ext_call.return_data[0]) - mem[_4961 + 192])
                            else:
                                if 9 * mem[(32 * _3281 - 1) + _3233 + ceil32(return_data.size) + 32] / mem[(32 * _3281 - 1) + _3233 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4675 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4675] = 26
                                mem[_4675 + 32] = 'SafeMath: division by zero'
                                if 9 * _4601 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4937 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4985 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4985] = mem[_4937]
                                mem[_4985 + 32] = mem[_4937 + 32]
                                mem[_4985 + 64] = mem[_4937 + 64]
                                mem[_4985 + 96] = mem[_4937 + 96]
                                mem[_4985 + 128] = mem[_4937 + 128]
                                mem[_4985 + 160] = mem[_4937 + 160]
                                mem[_4985 + 192] = mem[_4937 + 192]
                                if mem[_4985 + 192] <= (9 * _4601 / 10) + (2 * ext_call.return_data[0]):
                                    return ((9 * _4601 / 10) + (2 * ext_call.return_data[0]) - mem[_4985 + 192])
                    else:
                        _1648 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_1648 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[_1648]
                        mem[_1648 + 32] = stor17
                        require 1 < mem[_1648]
                        if stor13 == wantAddress:
                            mem[_1648 + 64] = wantAddress
                            mem[_1648 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1648 + 132] = _1631 + _38
                            mem[_1648 + 164] = 64
                            mem[_1648 + 196] = mem[_1648]
                            idx = 0
                            s = _1648 + 32
                            t = _1648 + 228
                            while idx < mem[_1648]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1648 + (32 * mem[_1648]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3236 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3260 = mem[_3236]
                            require mem[_3236] <= test266151307()
                            require _3236 + return_data.size > _3236 + mem[_3236] + 31
                            _3284 = mem[_3236 + mem[_3236]]
                            require mem[_3236 + mem[_3236]] <= test266151307()
                            require (32 * mem[_3236 + mem[_3236]]) + 32 >= 0 and _3236 + ceil32(return_data.size) + (32 * mem[_3236 + mem[_3236]]) + 32 <= test266151307()
                            mem[64] = _3236 + ceil32(return_data.size) + (32 * mem[_3236 + mem[_3236]]) + 32
                            mem[_3236 + ceil32(return_data.size)] = _3284
                            require return_data.size >= _3260 + (32 * _3284) + 32
                            mem[_3236 + ceil32(return_data.size) + 32 len 32 * _3284] = mem[_3236 + _3260 + 32 len 32 * _3284]
                            require _3284 - 1 < _3284
                            _4604 = mem[(32 * _3284 - 1) + _3236 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3284 - 1) + _3236 + ceil32(return_data.size) + 32]:
                                _4652 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4652] = 26
                                mem[_4652 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4916 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4964 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4964] = mem[_4916]
                                mem[_4964 + 32] = mem[_4916 + 32]
                                mem[_4964 + 64] = mem[_4916 + 64]
                                mem[_4964 + 96] = mem[_4916 + 96]
                                mem[_4964 + 128] = mem[_4916 + 128]
                                mem[_4964 + 160] = mem[_4916 + 160]
                                mem[_4964 + 192] = mem[_4916 + 192]
                                if mem[_4964 + 192] <= 2 * ext_call.return_data[0]:
                                    return ((2 * ext_call.return_data[0]) - mem[_4964 + 192])
                            else:
                                if 9 * mem[(32 * _3284 - 1) + _3236 + ceil32(return_data.size) + 32] / mem[(32 * _3284 - 1) + _3236 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4681 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4681] = 26
                                mem[_4681 + 32] = 'SafeMath: division by zero'
                                if 9 * _4604 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4940 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4988 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4988] = mem[_4940]
                                mem[_4988 + 32] = mem[_4940 + 32]
                                mem[_4988 + 64] = mem[_4940 + 64]
                                mem[_4988 + 96] = mem[_4940 + 96]
                                mem[_4988 + 128] = mem[_4940 + 128]
                                mem[_4988 + 160] = mem[_4940 + 160]
                                mem[_4988 + 192] = mem[_4940 + 192]
                                if mem[_4988 + 192] <= (9 * _4604 / 10) + (2 * ext_call.return_data[0]):
                                    return ((9 * _4604 / 10) + (2 * ext_call.return_data[0]) - mem[_4988 + 192])
                        else:
                            mem[_1648 + 64] = stor13
                            require 2 < mem[_1648]
                            mem[_1648 + 96] = wantAddress
                            mem[_1648 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1648 + 132] = _1631 + _38
                            mem[_1648 + 164] = 64
                            mem[_1648 + 196] = mem[_1648]
                            idx = 0
                            s = _1648 + 32
                            t = _1648 + 228
                            while idx < mem[_1648]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1648 + (32 * mem[_1648]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3235 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3259 = mem[_3235]
                            require mem[_3235] <= test266151307()
                            require _3235 + return_data.size > _3235 + mem[_3235] + 31
                            _3283 = mem[_3235 + mem[_3235]]
                            require mem[_3235 + mem[_3235]] <= test266151307()
                            require (32 * mem[_3235 + mem[_3235]]) + 32 >= 0 and _3235 + ceil32(return_data.size) + (32 * mem[_3235 + mem[_3235]]) + 32 <= test266151307()
                            mem[64] = _3235 + ceil32(return_data.size) + (32 * mem[_3235 + mem[_3235]]) + 32
                            mem[_3235 + ceil32(return_data.size)] = _3283
                            require return_data.size >= _3259 + (32 * _3283) + 32
                            mem[_3235 + ceil32(return_data.size) + 32 len 32 * _3283] = mem[_3235 + _3259 + 32 len 32 * _3283]
                            require _3283 - 1 < _3283
                            _4603 = mem[(32 * _3283 - 1) + _3235 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3283 - 1) + _3235 + ceil32(return_data.size) + 32]:
                                _4651 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4651] = 26
                                mem[_4651 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4915 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4963 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4963] = mem[_4915]
                                mem[_4963 + 32] = mem[_4915 + 32]
                                mem[_4963 + 64] = mem[_4915 + 64]
                                mem[_4963 + 96] = mem[_4915 + 96]
                                mem[_4963 + 128] = mem[_4915 + 128]
                                mem[_4963 + 160] = mem[_4915 + 160]
                                mem[_4963 + 192] = mem[_4915 + 192]
                                if mem[_4963 + 192] <= 2 * ext_call.return_data[0]:
                                    return ((2 * ext_call.return_data[0]) - mem[_4963 + 192])
                            else:
                                if 9 * mem[(32 * _3283 - 1) + _3235 + ceil32(return_data.size) + 32] / mem[(32 * _3283 - 1) + _3235 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4679 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4679] = 26
                                mem[_4679 + 32] = 'SafeMath: division by zero'
                                if 9 * _4603 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4939 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4987 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4987] = mem[_4939]
                                mem[_4987 + 32] = mem[_4939 + 32]
                                mem[_4987 + 64] = mem[_4939 + 64]
                                mem[_4987 + 96] = mem[_4939 + 96]
                                mem[_4987 + 128] = mem[_4939 + 128]
                                mem[_4987 + 160] = mem[_4939 + 160]
                                mem[_4987 + 192] = mem[_4939 + 192]
                                if mem[_4987 + 192] <= (9 * _4603 / 10) + (2 * ext_call.return_data[0]):
                                    return ((9 * _4603 / 10) + (2 * ext_call.return_data[0]) - mem[_4987 + 192])
        else:
            mem[_42 + (7 * ceil32(return_data.size)) + 128] = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor17)
            staticcall stor17.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1628 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1632 = mem[_1628]
            if mem[_1628] + _38 < _38:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[_1628] + _38:
                _1658 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1658] = 26
                mem[_1658 + 32] = 'SafeMath: division by zero'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).strategies(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1818 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _1858 = mem[64]
                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                mem[64] = mem[64] + 288
                mem[_1858] = mem[_1818]
                mem[_1858 + 32] = mem[_1818 + 32]
                mem[_1858 + 64] = mem[_1818 + 64]
                mem[_1858 + 96] = mem[_1818 + 96]
                mem[_1858 + 128] = mem[_1818 + 128]
                mem[_1858 + 160] = mem[_1818 + 160]
                mem[_1858 + 192] = mem[_1818 + 192]
                if mem[_1858 + 192] <= 2 * ext_call.return_data[0]:
                    return ((2 * ext_call.return_data[0]) - mem[_1858 + 192])
            else:
                if stor13 == stor17:
                    _1644 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1644]
                    mem[_1644 + 32] = stor17
                    require 1 < mem[_1644]
                    if stor13 == stor17:
                        mem[_1644 + 64] = wantAddress
                        mem[_1644 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1644 + 100] = _1632 + _38
                        mem[_1644 + 132] = 64
                        mem[_1644 + 164] = mem[_1644]
                        idx = 0
                        s = _1644 + 32
                        t = _1644 + 196
                        while idx < mem[_1644]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1644 + (32 * mem[_1644]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3238 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3262 = mem[_3238]
                        require mem[_3238] <= test266151307()
                        require _3238 + return_data.size > _3238 + mem[_3238] + 31
                        _3286 = mem[_3238 + mem[_3238]]
                        require mem[_3238 + mem[_3238]] <= test266151307()
                        require (32 * mem[_3238 + mem[_3238]]) + 32 >= 0 and _3238 + ceil32(return_data.size) + (32 * mem[_3238 + mem[_3238]]) + 32 <= test266151307()
                        mem[64] = _3238 + ceil32(return_data.size) + (32 * mem[_3238 + mem[_3238]]) + 32
                        mem[_3238 + ceil32(return_data.size)] = _3286
                        require return_data.size >= _3262 + (32 * _3286) + 32
                        mem[_3238 + ceil32(return_data.size) + 32 len 32 * _3286] = mem[_3238 + _3262 + 32 len 32 * _3286]
                        require _3286 - 1 < _3286
                        _4606 = mem[(32 * _3286 - 1) + _3238 + ceil32(return_data.size) + 32]
                        if not mem[(32 * _3286 - 1) + _3238 + ceil32(return_data.size) + 32]:
                            _4654 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4654] = 26
                            mem[_4654 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4918 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4966 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4966] = mem[_4918]
                            mem[_4966 + 32] = mem[_4918 + 32]
                            mem[_4966 + 64] = mem[_4918 + 64]
                            mem[_4966 + 96] = mem[_4918 + 96]
                            mem[_4966 + 128] = mem[_4918 + 128]
                            mem[_4966 + 160] = mem[_4918 + 160]
                            mem[_4966 + 192] = mem[_4918 + 192]
                            if mem[_4966 + 192] <= 2 * ext_call.return_data[0]:
                                return ((2 * ext_call.return_data[0]) - mem[_4966 + 192])
                        else:
                            if 9 * mem[(32 * _3286 - 1) + _3238 + ceil32(return_data.size) + 32] / mem[(32 * _3286 - 1) + _3238 + ceil32(return_data.size) + 32] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4685 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4685] = 26
                            mem[_4685 + 32] = 'SafeMath: division by zero'
                            if 9 * _4606 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4942 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4990 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4990] = mem[_4942]
                            mem[_4990 + 32] = mem[_4942 + 32]
                            mem[_4990 + 64] = mem[_4942 + 64]
                            mem[_4990 + 96] = mem[_4942 + 96]
                            mem[_4990 + 128] = mem[_4942 + 128]
                            mem[_4990 + 160] = mem[_4942 + 160]
                            mem[_4990 + 192] = mem[_4942 + 192]
                            if mem[_4990 + 192] <= (9 * _4606 / 10) + (2 * ext_call.return_data[0]):
                                return ((9 * _4606 / 10) + (2 * ext_call.return_data[0]) - mem[_4990 + 192])
                    else:
                        mem[_1644 + 64] = stor13
                        require 2 < mem[_1644]
                        mem[_1644 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_1644 + 100] = _1632 + _38
                        mem[_1644 + 132] = 64
                        mem[_1644 + 164] = mem[_1644]
                        idx = 0
                        s = _1644 + 32
                        t = _1644 + 196
                        while idx < mem[_1644]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _1644 + (32 * mem[_1644]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3237 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3261 = mem[_3237]
                        require mem[_3237] <= test266151307()
                        require _3237 + return_data.size > _3237 + mem[_3237] + 31
                        _3285 = mem[_3237 + mem[_3237]]
                        require mem[_3237 + mem[_3237]] <= test266151307()
                        require (32 * mem[_3237 + mem[_3237]]) + 32 >= 0 and _3237 + ceil32(return_data.size) + (32 * mem[_3237 + mem[_3237]]) + 32 <= test266151307()
                        mem[64] = _3237 + ceil32(return_data.size) + (32 * mem[_3237 + mem[_3237]]) + 32
                        mem[_3237 + ceil32(return_data.size)] = _3285
                        require return_data.size >= _3261 + (32 * _3285) + 32
                        mem[_3237 + ceil32(return_data.size) + 32 len 32 * _3285] = mem[_3237 + _3261 + 32 len 32 * _3285]
                        require _3285 - 1 < _3285
                        _4605 = mem[(32 * _3285 - 1) + _3237 + ceil32(return_data.size) + 32]
                        if not mem[(32 * _3285 - 1) + _3237 + ceil32(return_data.size) + 32]:
                            _4653 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4653] = 26
                            mem[_4653 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4917 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4965 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4965] = mem[_4917]
                            mem[_4965 + 32] = mem[_4917 + 32]
                            mem[_4965 + 64] = mem[_4917 + 64]
                            mem[_4965 + 96] = mem[_4917 + 96]
                            mem[_4965 + 128] = mem[_4917 + 128]
                            mem[_4965 + 160] = mem[_4917 + 160]
                            mem[_4965 + 192] = mem[_4917 + 192]
                            if mem[_4965 + 192] <= 2 * ext_call.return_data[0]:
                                return ((2 * ext_call.return_data[0]) - mem[_4965 + 192])
                        else:
                            if 9 * mem[(32 * _3285 - 1) + _3237 + ceil32(return_data.size) + 32] / mem[(32 * _3285 - 1) + _3237 + ceil32(return_data.size) + 32] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4683 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4683] = 26
                            mem[_4683 + 32] = 'SafeMath: division by zero'
                            if 9 * _4605 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(address(vaultAddress))
                            staticcall address(vaultAddress).strategies(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4941 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _4989 = mem[64]
                            require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                            mem[64] = mem[64] + 288
                            mem[_4989] = mem[_4941]
                            mem[_4989 + 32] = mem[_4941 + 32]
                            mem[_4989 + 64] = mem[_4941 + 64]
                            mem[_4989 + 96] = mem[_4941 + 96]
                            mem[_4989 + 128] = mem[_4941 + 128]
                            mem[_4989 + 160] = mem[_4941 + 160]
                            mem[_4989 + 192] = mem[_4941 + 192]
                            if mem[_4989 + 192] <= (9 * _4605 / 10) + (2 * ext_call.return_data[0]):
                                return ((9 * _4605 / 10) + (2 * ext_call.return_data[0]) - mem[_4989 + 192])
                else:
                    if stor13 == wantAddress:
                        _1649 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1649]
                        mem[_1649 + 32] = stor17
                        require 1 < mem[_1649]
                        if stor13 == wantAddress:
                            mem[_1649 + 64] = wantAddress
                            mem[_1649 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1649 + 100] = _1632 + _38
                            mem[_1649 + 132] = 64
                            mem[_1649 + 164] = mem[_1649]
                            idx = 0
                            s = _1649 + 32
                            t = _1649 + 196
                            while idx < mem[_1649]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1649 + (32 * mem[_1649]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3240 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3264 = mem[_3240]
                            require mem[_3240] <= test266151307()
                            require _3240 + return_data.size > _3240 + mem[_3240] + 31
                            _3288 = mem[_3240 + mem[_3240]]
                            require mem[_3240 + mem[_3240]] <= test266151307()
                            require (32 * mem[_3240 + mem[_3240]]) + 32 >= 0 and _3240 + ceil32(return_data.size) + (32 * mem[_3240 + mem[_3240]]) + 32 <= test266151307()
                            mem[64] = _3240 + ceil32(return_data.size) + (32 * mem[_3240 + mem[_3240]]) + 32
                            mem[_3240 + ceil32(return_data.size)] = _3288
                            require return_data.size >= _3264 + (32 * _3288) + 32
                            mem[_3240 + ceil32(return_data.size) + 32 len 32 * _3288] = mem[_3240 + _3264 + 32 len 32 * _3288]
                            require _3288 - 1 < _3288
                            _4608 = mem[(32 * _3288 - 1) + _3240 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3288 - 1) + _3240 + ceil32(return_data.size) + 32]:
                                _4656 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4656] = 26
                                mem[_4656 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4920 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4968 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4968] = mem[_4920]
                                mem[_4968 + 32] = mem[_4920 + 32]
                                mem[_4968 + 64] = mem[_4920 + 64]
                                mem[_4968 + 96] = mem[_4920 + 96]
                                mem[_4968 + 128] = mem[_4920 + 128]
                                mem[_4968 + 160] = mem[_4920 + 160]
                                mem[_4968 + 192] = mem[_4920 + 192]
                                if mem[_4968 + 192] <= 2 * ext_call.return_data[0]:
                                    return ((2 * ext_call.return_data[0]) - mem[_4968 + 192])
                            else:
                                if 9 * mem[(32 * _3288 - 1) + _3240 + ceil32(return_data.size) + 32] / mem[(32 * _3288 - 1) + _3240 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4689 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4689] = 26
                                mem[_4689 + 32] = 'SafeMath: division by zero'
                                if 9 * _4608 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4944 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4992 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4992] = mem[_4944]
                                mem[_4992 + 32] = mem[_4944 + 32]
                                mem[_4992 + 64] = mem[_4944 + 64]
                                mem[_4992 + 96] = mem[_4944 + 96]
                                mem[_4992 + 128] = mem[_4944 + 128]
                                mem[_4992 + 160] = mem[_4944 + 160]
                                mem[_4992 + 192] = mem[_4944 + 192]
                                if mem[_4992 + 192] <= (9 * _4608 / 10) + (2 * ext_call.return_data[0]):
                                    return ((9 * _4608 / 10) + (2 * ext_call.return_data[0]) - mem[_4992 + 192])
                        else:
                            mem[_1649 + 64] = stor13
                            require 2 < mem[_1649]
                            mem[_1649 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1649 + 100] = _1632 + _38
                            mem[_1649 + 132] = 64
                            mem[_1649 + 164] = mem[_1649]
                            idx = 0
                            s = _1649 + 32
                            t = _1649 + 196
                            while idx < mem[_1649]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1649 + (32 * mem[_1649]) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3239 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3263 = mem[_3239]
                            require mem[_3239] <= test266151307()
                            require _3239 + return_data.size > _3239 + mem[_3239] + 31
                            _3287 = mem[_3239 + mem[_3239]]
                            require mem[_3239 + mem[_3239]] <= test266151307()
                            require (32 * mem[_3239 + mem[_3239]]) + 32 >= 0 and _3239 + ceil32(return_data.size) + (32 * mem[_3239 + mem[_3239]]) + 32 <= test266151307()
                            mem[64] = _3239 + ceil32(return_data.size) + (32 * mem[_3239 + mem[_3239]]) + 32
                            mem[_3239 + ceil32(return_data.size)] = _3287
                            require return_data.size >= _3263 + (32 * _3287) + 32
                            mem[_3239 + ceil32(return_data.size) + 32 len 32 * _3287] = mem[_3239 + _3263 + 32 len 32 * _3287]
                            require _3287 - 1 < _3287
                            _4607 = mem[(32 * _3287 - 1) + _3239 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3287 - 1) + _3239 + ceil32(return_data.size) + 32]:
                                _4655 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4655] = 26
                                mem[_4655 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4919 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4967 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4967] = mem[_4919]
                                mem[_4967 + 32] = mem[_4919 + 32]
                                mem[_4967 + 64] = mem[_4919 + 64]
                                mem[_4967 + 96] = mem[_4919 + 96]
                                mem[_4967 + 128] = mem[_4919 + 128]
                                mem[_4967 + 160] = mem[_4919 + 160]
                                mem[_4967 + 192] = mem[_4919 + 192]
                                if mem[_4967 + 192] <= 2 * ext_call.return_data[0]:
                                    return ((2 * ext_call.return_data[0]) - mem[_4967 + 192])
                            else:
                                if 9 * mem[(32 * _3287 - 1) + _3239 + ceil32(return_data.size) + 32] / mem[(32 * _3287 - 1) + _3239 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4687 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4687] = 26
                                mem[_4687 + 32] = 'SafeMath: division by zero'
                                if 9 * _4607 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4943 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4991 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4991] = mem[_4943]
                                mem[_4991 + 32] = mem[_4943 + 32]
                                mem[_4991 + 64] = mem[_4943 + 64]
                                mem[_4991 + 96] = mem[_4943 + 96]
                                mem[_4991 + 128] = mem[_4943 + 128]
                                mem[_4991 + 160] = mem[_4943 + 160]
                                mem[_4991 + 192] = mem[_4943 + 192]
                                if mem[_4991 + 192] <= (9 * _4607 / 10) + (2 * ext_call.return_data[0]):
                                    return ((9 * _4607 / 10) + (2 * ext_call.return_data[0]) - mem[_4991 + 192])
                    else:
                        _1650 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        mem[_1650 + 32 len 96] = call.data[calldata.size len 96]
                        require 0 < mem[_1650]
                        mem[_1650 + 32] = stor17
                        require 1 < mem[_1650]
                        if stor13 == wantAddress:
                            mem[_1650 + 64] = wantAddress
                            mem[_1650 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1650 + 132] = _1632 + _38
                            mem[_1650 + 164] = 64
                            mem[_1650 + 196] = mem[_1650]
                            idx = 0
                            s = _1650 + 32
                            t = _1650 + 228
                            while idx < mem[_1650]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1650 + (32 * mem[_1650]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3242 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3266 = mem[_3242]
                            require mem[_3242] <= test266151307()
                            require _3242 + return_data.size > _3242 + mem[_3242] + 31
                            _3290 = mem[_3242 + mem[_3242]]
                            require mem[_3242 + mem[_3242]] <= test266151307()
                            require (32 * mem[_3242 + mem[_3242]]) + 32 >= 0 and _3242 + ceil32(return_data.size) + (32 * mem[_3242 + mem[_3242]]) + 32 <= test266151307()
                            mem[64] = _3242 + ceil32(return_data.size) + (32 * mem[_3242 + mem[_3242]]) + 32
                            mem[_3242 + ceil32(return_data.size)] = _3290
                            require return_data.size >= _3266 + (32 * _3290) + 32
                            mem[_3242 + ceil32(return_data.size) + 32 len 32 * _3290] = mem[_3242 + _3266 + 32 len 32 * _3290]
                            require _3290 - 1 < _3290
                            _4610 = mem[(32 * _3290 - 1) + _3242 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3290 - 1) + _3242 + ceil32(return_data.size) + 32]:
                                _4658 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4658] = 26
                                mem[_4658 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4922 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4970 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4970] = mem[_4922]
                                mem[_4970 + 32] = mem[_4922 + 32]
                                mem[_4970 + 64] = mem[_4922 + 64]
                                mem[_4970 + 96] = mem[_4922 + 96]
                                mem[_4970 + 128] = mem[_4922 + 128]
                                mem[_4970 + 160] = mem[_4922 + 160]
                                mem[_4970 + 192] = mem[_4922 + 192]
                                if mem[_4970 + 192] <= 2 * ext_call.return_data[0]:
                                    return ((2 * ext_call.return_data[0]) - mem[_4970 + 192])
                            else:
                                if 9 * mem[(32 * _3290 - 1) + _3242 + ceil32(return_data.size) + 32] / mem[(32 * _3290 - 1) + _3242 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4693 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4693] = 26
                                mem[_4693 + 32] = 'SafeMath: division by zero'
                                if 9 * _4610 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4946 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4994 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4994] = mem[_4946]
                                mem[_4994 + 32] = mem[_4946 + 32]
                                mem[_4994 + 64] = mem[_4946 + 64]
                                mem[_4994 + 96] = mem[_4946 + 96]
                                mem[_4994 + 128] = mem[_4946 + 128]
                                mem[_4994 + 160] = mem[_4946 + 160]
                                mem[_4994 + 192] = mem[_4946 + 192]
                                if mem[_4994 + 192] <= (9 * _4610 / 10) + (2 * ext_call.return_data[0]):
                                    return ((9 * _4610 / 10) + (2 * ext_call.return_data[0]) - mem[_4994 + 192])
                        else:
                            mem[_1650 + 64] = stor13
                            require 2 < mem[_1650]
                            mem[_1650 + 96] = wantAddress
                            mem[_1650 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[_1650 + 132] = _1632 + _38
                            mem[_1650 + 164] = 64
                            mem[_1650 + 196] = mem[_1650]
                            idx = 0
                            s = _1650 + 32
                            t = _1650 + 228
                            while idx < mem[_1650]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len _1650 + (32 * mem[_1650]) + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3241 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3265 = mem[_3241]
                            require mem[_3241] <= test266151307()
                            require _3241 + return_data.size > _3241 + mem[_3241] + 31
                            _3289 = mem[_3241 + mem[_3241]]
                            require mem[_3241 + mem[_3241]] <= test266151307()
                            require (32 * mem[_3241 + mem[_3241]]) + 32 >= 0 and _3241 + ceil32(return_data.size) + (32 * mem[_3241 + mem[_3241]]) + 32 <= test266151307()
                            mem[64] = _3241 + ceil32(return_data.size) + (32 * mem[_3241 + mem[_3241]]) + 32
                            mem[_3241 + ceil32(return_data.size)] = _3289
                            require return_data.size >= _3265 + (32 * _3289) + 32
                            mem[_3241 + ceil32(return_data.size) + 32 len 32 * _3289] = mem[_3241 + _3265 + 32 len 32 * _3289]
                            require _3289 - 1 < _3289
                            _4609 = mem[(32 * _3289 - 1) + _3241 + ceil32(return_data.size) + 32]
                            if not mem[(32 * _3289 - 1) + _3241 + ceil32(return_data.size) + 32]:
                                _4657 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4657] = 26
                                mem[_4657 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4921 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4969 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4969] = mem[_4921]
                                mem[_4969 + 32] = mem[_4921 + 32]
                                mem[_4969 + 64] = mem[_4921 + 64]
                                mem[_4969 + 96] = mem[_4921 + 96]
                                mem[_4969 + 128] = mem[_4921 + 128]
                                mem[_4969 + 160] = mem[_4921 + 160]
                                mem[_4969 + 192] = mem[_4921 + 192]
                                if mem[_4969 + 192] <= 2 * ext_call.return_data[0]:
                                    return ((2 * ext_call.return_data[0]) - mem[_4969 + 192])
                            else:
                                if 9 * mem[(32 * _3289 - 1) + _3241 + ceil32(return_data.size) + 32] / mem[(32 * _3289 - 1) + _3241 + ceil32(return_data.size) + 32] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4691 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4691] = 26
                                mem[_4691 + 32] = 'SafeMath: division by zero'
                                if 9 * _4609 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(address(vaultAddress))
                                staticcall address(vaultAddress).strategies(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4945 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _4993 = mem[64]
                                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                                mem[64] = mem[64] + 288
                                mem[_4993] = mem[_4945]
                                mem[_4993 + 32] = mem[_4945 + 32]
                                mem[_4993 + 64] = mem[_4945 + 64]
                                mem[_4993 + 96] = mem[_4945 + 96]
                                mem[_4993 + 128] = mem[_4945 + 128]
                                mem[_4993 + 160] = mem[_4945 + 160]
                                mem[_4993 + 192] = mem[_4945 + 192]
                                if mem[_4993 + 192] <= (9 * _4609 / 10) + (2 * ext_call.return_data[0]):
                                    return ((9 * _4609 / 10) + (2 * ext_call.return_data[0]) - mem[_4993 + 192])
    return 0
}



}
