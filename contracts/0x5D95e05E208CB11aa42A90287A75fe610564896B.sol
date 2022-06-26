contract main {




// =====================  Runtime code  =====================


#
#  - isActive()
#  - withdraw(uint256 arg1)
#  - harvest()
#
const name = 'SingleJoe', 0

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
uint8 stor10;
address stor11;
address stor12;
address stor13;
address joetrollerAddress;
address sub_8ba0eb73Address;
uint32 stor16;
address jTokenAddress;
uint256 stor16;
address sub_57cf3aeeAddress;
uint256 minWant;
uint8 sub_f4ca9fa5;
uint256 sub_9a24378a;
uint256 stor21;
uint8 forceMigrate;

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
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

function minWant() payable {
    return minWant
}

function maxReportDelay() payable {
    return maxReportDelay
}

function emergencyExit() payable {
    return bool(stor10)
}

function sub_57cf3aee(?) payable {
    return sub_57cf3aeeAddress
}

function joetroller() payable {
    return joetrollerAddress
}

function sub_8ba0eb73(?) payable {
    return sub_8ba0eb73Address
}

function profitFactor() payable {
    return profitFactor
}

function minReportDelay() payable {
    return minReportDelay
}

function sub_9a24378a(?) payable {
    return sub_9a24378a
}

function rewards() payable {
    return rewardsAddress
}

function JToken() payable {
    return address(jTokenAddress)
}

function keeper() payable {
    return keeperAddress
}

function forceMigrate() payable {
    return bool(forceMigrate)
}

function sub_f4ca9fa5(?) payable {
    return bool(sub_f4ca9fa5)
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

function sub_fcce5e3e(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == strategistAddress
    sub_9a24378a = arg1
}

function setMinWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == strategistAddress
    minWant = arg1
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

function sub_3125ab91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == strategistAddress
    if not address(arg1):
        revert with 0, 'Must be valid Address'
    sub_57cf3aeeAddress = address(arg1)
}

function sub_ed899c6e(?) payable {
    require ext_code.size(address(jTokenAddress))
    call address(jTokenAddress).exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function exchnageRate() payable {
    require ext_code.size(address(jTokenAddress))
    call address(jTokenAddress).exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_cfba51cc(?) payable {
    require ext_code.size(address(jTokenAddress))
    call address(jTokenAddress).balanceOfUnderlying(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function getLivePosition() payable {
    require ext_code.size(address(jTokenAddress))
    call address(jTokenAddress).exchangeRateCurrent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(jTokenAddress))
    staticcall address(jTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function getCurrentPosition() payable {
    require ext_code.size(address(jTokenAddress))
    staticcall address(jTokenAddress).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(jTokenAddress))
    staticcall address(jTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
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
    stor10 = 1
    require ext_code.size(address(vaultAddress))
    call address(vaultAddress).revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
}

function sub_ed101727(?) payable {
    require ext_code.size(address(jTokenAddress))
    staticcall address(jTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_57cf3aeeAddress)
    staticcall sub_57cf3aeeAddress.0x30ce638 with:
            gas gas_remaining wei
           args 0, address(jTokenAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(jTokenAddress))
    staticcall address(jTokenAddress).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if stor21 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - stor21:
            return 0
        if (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]) / block.timestamp - stor21 != 0 / ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        return ((block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if stor21 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not block.timestamp - stor21:
        return 0
    if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / block.timestamp - stor21 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return ((block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
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
    mem[ceil32(return_data.size) + 128] = address(jTokenAddress)
    mem[ceil32(return_data.size) + 160] = sub_8ba0eb73Address
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
    if not stor10:
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
            if 0 >= minWant:
                require ext_code.size(address(jTokenAddress))
                call address(jTokenAddress).mint(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            require ext_code.size(address(jTokenAddress))
            staticcall address(jTokenAddress).exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(jTokenAddress))
            staticcall address(jTokenAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(jTokenAddress))
                call address(jTokenAddress).redeemUnderlying(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(address(jTokenAddress))
                if 0 <= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                    call address(jTokenAddress).redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    staticcall address(jTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(jTokenAddress))
                    call address(jTokenAddress).redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
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
        require _127 - 1 < _127
        mem[mem[64]] = mem[(32 * _127 - 1) + ceil32(return_data.size) + 224]
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
            require _129 - 1 < _129
            mem[mem[64]] = mem[(32 * _129 - 1) + ceil32(return_data.size) + 224]
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
                require _131 - 1 < _131
                mem[mem[64]] = mem[(32 * _131 - 1) + ceil32(return_data.size) + 256]
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
                require _130 - 1 < _130
                mem[mem[64]] = mem[(32 * _130 - 1) + ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
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
        require stor13 == address(arg1)
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
        require _127 - 1 < _127
        mem[mem[64]] = mem[(32 * _127 - 1) + ceil32(return_data.size) + 224]
    else:
        if stor13 == address(arg2):
            mem[96] = 2
            mem[128] = address(arg1)
            require stor13 == address(arg2)
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
            require _129 - 1 < _129
            mem[mem[64]] = mem[(32 * _129 - 1) + ceil32(return_data.size) + 224]
        else:
            mem[96] = 3
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
                require _131 - 1 < _131
                mem[mem[64]] = mem[(32 * _131 - 1) + ceil32(return_data.size) + 256]
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
                require _130 - 1 < _130
                mem[mem[64]] = mem[(32 * _130 - 1) + ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_6027f02d(?) payable {
    require ext_code.size(address(jTokenAddress))
    staticcall address(jTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 >= sub_9a24378a:
            mem[ceil32(return_data.size) + 160] = 1
            mem[ceil32(return_data.size) + 128] = address(jTokenAddress)
            mem[ceil32(return_data.size) + 192] = this.address
            mem[ceil32(return_data.size) + 224] = 0x8805714b00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = 0
            idx = 0
            s = ceil32(return_data.size) + 192
            t = ceil32(return_data.size) + 420
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = 0
            s = ceil32(return_data.size) + 484
            t = ceil32(return_data.size) + 128
            while idx < 1:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(joetrollerAddress)
            call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                 gas gas_remaining wei
                args 0, 160, 224, 0, 1, 1, mem[ceil32(return_data.size) + 420], 1, mem[ceil32(return_data.size) + 484]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor21 = block.timestamp
    else:
        mem[ceil32(return_data.size) + 100] = 0
        mem[ceil32(return_data.size) + 132] = address(jTokenAddress)
        require ext_code.size(sub_57cf3aeeAddress)
        staticcall sub_57cf3aeeAddress.0x30ce638 with:
                gas gas_remaining wei
               args 0, address(jTokenAddress)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(jTokenAddress))
        staticcall address(jTokenAddress).0x18160ddd with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if stor21 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - stor21:
                if 0 >= sub_9a24378a:
                    mem[(4 * ceil32(return_data.size)) + 288] = 1
                    mem[(4 * ceil32(return_data.size)) + 256] = address(jTokenAddress)
                    mem[(4 * ceil32(return_data.size)) + 320] = this.address
                    mem[(4 * ceil32(return_data.size)) + 352] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 356] = 0
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 320
                    t = (4 * ceil32(return_data.size)) + 548
                    while idx < 1:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 612
                    t = (4 * ceil32(return_data.size)) + 256
                    while idx < 1:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(joetrollerAddress)
                    call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                         gas gas_remaining wei
                        args 0, 160, 224, 0, 1, 1, mem[(4 * ceil32(return_data.size)) + 548], 1, mem[(4 * ceil32(return_data.size)) + 612]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor21 = block.timestamp
            else:
                if (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]) / block.timestamp - stor21 != 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]) >= sub_9a24378a:
                    mem[(4 * ceil32(return_data.size)) + 288] = 1
                    mem[(4 * ceil32(return_data.size)) + 256] = address(jTokenAddress)
                    mem[(4 * ceil32(return_data.size)) + 320] = this.address
                    mem[(4 * ceil32(return_data.size)) + 352] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 356] = 0
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 320
                    t = (4 * ceil32(return_data.size)) + 548
                    while idx < 1:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 612
                    t = (4 * ceil32(return_data.size)) + 256
                    while idx < 1:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(joetrollerAddress)
                    call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                         gas gas_remaining wei
                        args 0, 160, 224, 0, 1, 1, mem[(4 * ceil32(return_data.size)) + 548], 1, mem[(4 * ceil32(return_data.size)) + 612]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor21 = block.timestamp
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if stor21 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - stor21:
                if 0 >= sub_9a24378a:
                    mem[(4 * ceil32(return_data.size)) + 288] = 1
                    mem[(4 * ceil32(return_data.size)) + 256] = address(jTokenAddress)
                    mem[(4 * ceil32(return_data.size)) + 320] = this.address
                    mem[(4 * ceil32(return_data.size)) + 352] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 356] = 0
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 320
                    t = (4 * ceil32(return_data.size)) + 548
                    while idx < 1:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 612
                    t = (4 * ceil32(return_data.size)) + 256
                    while idx < 1:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(joetrollerAddress)
                    call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                         gas gas_remaining wei
                        args 0, 160, 224, 0, 1, 1, mem[(4 * ceil32(return_data.size)) + 548], 1, mem[(4 * ceil32(return_data.size)) + 612]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor21 = block.timestamp
            else:
                if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / block.timestamp - stor21 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) >= sub_9a24378a:
                    mem[(4 * ceil32(return_data.size)) + 288] = 1
                    mem[(4 * ceil32(return_data.size)) + 256] = address(jTokenAddress)
                    mem[(4 * ceil32(return_data.size)) + 320] = this.address
                    mem[(4 * ceil32(return_data.size)) + 352] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 356] = 0
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 320
                    t = (4 * ceil32(return_data.size)) + 548
                    while idx < 1:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 612
                    t = (4 * ceil32(return_data.size)) + 256
                    while idx < 1:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(joetrollerAddress)
                    call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                         gas gas_remaining wei
                        args 0, 160, 224, 0, 1, 1, mem[(4 * ceil32(return_data.size)) + 548], 1, mem[(4 * ceil32(return_data.size)) + 612]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor21 = block.timestamp
}

function sub_02357e1a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == strategistAddress
    if address(jTokenAddress) == address(arg1):
        revert with 0, 'Cant change to same vault'
    mem[100] = this.address
    mem[132] = address(jTokenAddress)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(jTokenAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 41
    mem[ceil32(return_data.size) + 128 len 41] = 0xfe5361666545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = address(jTokenAddress)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(jTokenAddress)
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
    mem[(2 * ceil32(return_data.size)) + 228] = address(jTokenAddress)
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 192] = 68
    mem[(2 * ceil32(return_data.size)) + 228 len 28] = Mask(224, 0, stor16)
    mem[(2 * ceil32(return_data.size)) + 224 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 292] = 32
    mem[(2 * ceil32(return_data.size)) + 324] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 356 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor16), uint32(stor16), 0, 0
    mem[(2 * ceil32(return_data.size)) + 424] = 0
    call wantAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor16), uint32(stor16), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor16), uint32(stor16), 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor16) == bool(0, Mask(224, 0, stor16))
            if not 0, Mask(224, 0, stor16):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        address(jTokenAddress) = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 360] = this.address
        mem[(2 * ceil32(return_data.size)) + 392] = address(arg1)
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
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
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 520 len 96] = 0, address(arg1), -1, 0
        mem[(4 * ceil32(return_data.size)) + 588] = 0
        call wantAddress with:
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
                require 0, Mask(224, 0, stor16) == bool(0, Mask(224, 0, stor16))
                if not 0, Mask(224, 0, stor16):
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
    address(jTokenAddress) = address(arg1)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = this.address
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = address(arg1)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
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
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 96] = 0, address(arg1), -1, 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
    call wantAddress with:
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
            require 0, Mask(224, 0, stor16) == bool(0, Mask(224, 0, stor16))
            if not 0, Mask(224, 0, stor16):
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

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if wantAddress:
        revert with 0, 'Strategy already initialized'
    address(vaultAddress) = arg1
    require ext_code.size(arg1)
    staticcall arg1.token() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    wantAddress = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    mem[(2 * ceil32(return_data.size)) + 164] = -1
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg1) << 64, 0, -1, 0) << 288)
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
        strategistAddress = msg.sender
        rewardsAddress = msg.sender
        keeperAddress = msg.sender
        minReportDelay = 0
        maxReportDelay = 24 * 3600
        profitFactor = 100
        debtThreshold = 0
        mem[(2 * ceil32(return_data.size)) + 264] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 296] = -1
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, -1
        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        address(jTokenAddress) = arg2
        mem[(4 * ceil32(return_data.size)) + 264] = this.address
        mem[(4 * ceil32(return_data.size)) + 296] = arg2
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(6 * ceil32(return_data.size)) + 296] = arg2
        mem[(6 * ceil32(return_data.size)) + 328] = -1
        mem[(6 * ceil32(return_data.size)) + 260] = 68
        mem[(6 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + 360] = 32
        mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg2), -1, 0
        mem[(6 * ceil32(return_data.size)) + 492] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
            mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                if not mem[(6 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
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
        strategistAddress = msg.sender
        rewardsAddress = msg.sender
        keeperAddress = msg.sender
        minReportDelay = 0
        maxReportDelay = 24 * 3600
        profitFactor = 100
        debtThreshold = 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = msg.sender
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = -1
        require ext_code.size(address(vaultAddress))
        call address(vaultAddress).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, -1
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        address(jTokenAddress) = arg2
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg2
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg2), -1, 0
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call wantAddress with:
           funct Mask(32, 224, 0, address(arg2), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg2), -1, 0) << 288)
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
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                    revert with 0, 
                                'SafeERC20: ERC20 operation did not succeed',
                                mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    sub_8ba0eb73Address = arg4
    joetrollerAddress = arg5
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_call.return_data[31 len 1] <= 18
    stor11 = arg3
    profitFactor = 100000
    debtThreshold = 1000000000000 * 10^18
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    minWant = 10^ext_call.return_data[31 len 1] / 100000
    sub_9a24378a = 10^15
    stor21 = block.timestamp
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
        _245 = mem[(32 * _155 - 1) + ceil32(return_data.size) + 224]
        mem[mem[64] + 4] = address(vaultAddress)
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _245
        mem[mem[64] + 100] = minReportDelay
        mem[mem[64] + 132] = maxReportDelay
        mem[mem[64] + 164] = debtThreshold
        mem[mem[64] + 196] = profitFactor
        require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
        delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0x4937cba9 with:
             gas gas_remaining wei
            args address(vaultAddress), address(this.address), _245, minReportDelay, maxReportDelay, debtThreshold, profitFactor
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
            _247 = mem[(32 * _157 - 1) + ceil32(return_data.size) + 224]
            mem[mem[64] + 4] = address(vaultAddress)
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _247
            mem[mem[64] + 100] = minReportDelay
            mem[mem[64] + 132] = maxReportDelay
            mem[mem[64] + 164] = debtThreshold
            mem[mem[64] + 196] = profitFactor
            require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
            delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0x4937cba9 with:
                 gas gas_remaining wei
                args address(vaultAddress), address(this.address), _247, minReportDelay, maxReportDelay, debtThreshold, profitFactor
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
                _249 = mem[(32 * _159 - 1) + ceil32(return_data.size) + 256]
                mem[mem[64] + 4] = address(vaultAddress)
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _249
                mem[mem[64] + 100] = minReportDelay
                mem[mem[64] + 132] = maxReportDelay
                mem[mem[64] + 164] = debtThreshold
                mem[mem[64] + 196] = profitFactor
                require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
                delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0x4937cba9 with:
                     gas gas_remaining wei
                    args address(vaultAddress), address(this.address), _249, minReportDelay, maxReportDelay, debtThreshold, profitFactor
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
                _248 = mem[(32 * _158 - 1) + ceil32(return_data.size) + 256]
                mem[mem[64] + 4] = address(vaultAddress)
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _248
                mem[mem[64] + 100] = minReportDelay
                mem[mem[64] + 132] = maxReportDelay
                mem[mem[64] + 164] = debtThreshold
                mem[mem[64] + 196] = profitFactor
                require ext_code.size(0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d)
                delegate 0xdb5f0fcfb3428b3e256e4a8e36af9457866b6e7d.0x4937cba9 with:
                     gas gas_remaining wei
                    args address(vaultAddress), address(this.address), _248, minReportDelay, maxReportDelay, debtThreshold, profitFactor
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

function sub_7b743b75(?) payable {
    mem[100] = this.address
    require ext_code.size(sub_8ba0eb73Address)
    staticcall sub_8ba0eb73Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_9a24378a:
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 100] = stor11
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(sub_8ba0eb73Address)
        call sub_8ba0eb73Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor11, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor13 == sub_8ba0eb73Address:
            mem[(2 * ceil32(return_data.size)) + 128] = sub_8ba0eb73Address
            if stor13 == sub_8ba0eb73Address:
                mem[(2 * ceil32(return_data.size)) + 160] = wantAddress
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
                require ext_code.size(stor11)
                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] - 1 < mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]:
        else:
            if stor13 == wantAddress:
                mem[(2 * ceil32(return_data.size)) + 128] = sub_8ba0eb73Address
                if stor13 == wantAddress:
                    mem[(2 * ceil32(return_data.size)) + 160] = wantAddress
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
                    require ext_code.size(stor11)
                    call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] - 1 < mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]:
            else:
                mem[(2 * ceil32(return_data.size)) + 128 len 96] = call.data[calldata.size len 96]
                mem[(2 * ceil32(return_data.size)) + 128] = sub_8ba0eb73Address
                if stor13 == wantAddress:
                    mem[(2 * ceil32(return_data.size)) + 160] = wantAddress
                else:
                    mem[(2 * ceil32(return_data.size)) + 160] = stor13
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
                require ext_code.size(stor11)
                call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] - 1 < mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]:
    else:
        if stor13 == sub_8ba0eb73Address:
            mem[ceil32(return_data.size) + 96] = 2
            mem[ceil32(return_data.size) + 128] = sub_8ba0eb73Address
            if stor13 == sub_8ba0eb73Address:
                mem[ceil32(return_data.size) + 160] = wantAddress
                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 228] = 64
                mem[ceil32(return_data.size) + 260] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _766 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223
                _778 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                mem[(2 * ceil32(return_data.size)) + 192] = _778
                require return_data.size >= _766 + (32 * _778) + 32
                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _778] = mem[ceil32(return_data.size) + _766 + 224 len 32 * _778]
                if _778 - 1 < _778:
                    _1432 = mem[(32 * _778 - 1) + (2 * ceil32(return_data.size)) + 224]
                    mem[mem[64] + 4] = stor11
                    mem[mem[64] + 36] = ext_call.return_data[0]
                    require ext_code.size(sub_8ba0eb73Address)
                    call sub_8ba0eb73Address.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor11, ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1456 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1456] == bool(mem[_1456])
                    if stor13 == sub_8ba0eb73Address:
                        _1468 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if 0 < mem[_1468]:
                            mem[_1468 + 32] = sub_8ba0eb73Address
                            if stor13 == sub_8ba0eb73Address:
                                if 1 < mem[_1468]:
                                    mem[_1468 + 64] = wantAddress
                                    mem[_1468 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1468 + 100] = ext_call.return_data[0]
                                    mem[_1468 + 132] = _1432
                                    mem[_1468 + 164] = 160
                                    mem[_1468 + 260] = mem[_1468]
                                    idx = 0
                                    s = _1468 + 32
                                    t = _1468 + 292
                                    while idx < mem[_1468]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_1468 + 196] = this.address
                                    mem[_1468 + 228] = block.timestamp
                                    require ext_code.size(stor11)
                                    call stor11.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1468 + (32 * mem[_1468]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2068 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2068] <= test266151307()
                                    require _2068 + return_data.size > _2068 + mem[_2068] + 31
                                    require mem[_2068 + mem[_2068]] <= test266151307()
                                    require (32 * mem[_2068 + mem[_2068]]) + 32 >= 0 and _2068 + ceil32(return_data.size) + (32 * mem[_2068 + mem[_2068]]) + 32 <= test266151307()
                                    require return_data.size >= mem[_2068] + (32 * mem[_2068 + mem[_2068]]) + 32
                                    if mem[_2068 + mem[_2068]] - 1 < mem[_2068 + mem[_2068]]:
                            else:
                                if 1 < mem[_1468]:
                                    mem[_1468 + 64] = stor13
                                    if 2 < mem[_1468]:
                                        mem[_1468 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1468 + 100] = ext_call.return_data[0]
                                        mem[_1468 + 132] = _1432
                                        mem[_1468 + 164] = 160
                                        mem[_1468 + 260] = mem[_1468]
                                        idx = 0
                                        s = _1468 + 32
                                        t = _1468 + 292
                                        while idx < mem[_1468]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1468 + 196] = this.address
                                        mem[_1468 + 228] = block.timestamp
                                        require ext_code.size(stor11)
                                        call stor11.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1468 + (32 * mem[_1468]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2067 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2067] <= test266151307()
                                        require _2067 + return_data.size > _2067 + mem[_2067] + 31
                                        require mem[_2067 + mem[_2067]] <= test266151307()
                                        require (32 * mem[_2067 + mem[_2067]]) + 32 >= 0 and _2067 + ceil32(return_data.size) + (32 * mem[_2067 + mem[_2067]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_2067] + (32 * mem[_2067 + mem[_2067]]) + 32
                                        if mem[_2067 + mem[_2067]] - 1 < mem[_2067 + mem[_2067]]:
                    else:
                        if stor13 == wantAddress:
                            _1475 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 < mem[_1475]:
                                mem[_1475 + 32] = sub_8ba0eb73Address
                                if stor13 == wantAddress:
                                    if 1 < mem[_1475]:
                                        mem[_1475 + 64] = wantAddress
                                        mem[_1475 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1475 + 100] = ext_call.return_data[0]
                                        mem[_1475 + 132] = _1432
                                        mem[_1475 + 164] = 160
                                        mem[_1475 + 260] = mem[_1475]
                                        idx = 0
                                        s = _1475 + 32
                                        t = _1475 + 292
                                        while idx < mem[_1475]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1475 + 196] = this.address
                                        mem[_1475 + 228] = block.timestamp
                                        require ext_code.size(stor11)
                                        call stor11.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1475 + (32 * mem[_1475]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2070 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2070] <= test266151307()
                                        require _2070 + return_data.size > _2070 + mem[_2070] + 31
                                        require mem[_2070 + mem[_2070]] <= test266151307()
                                        require (32 * mem[_2070 + mem[_2070]]) + 32 >= 0 and _2070 + ceil32(return_data.size) + (32 * mem[_2070 + mem[_2070]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_2070] + (32 * mem[_2070 + mem[_2070]]) + 32
                                        if mem[_2070 + mem[_2070]] - 1 < mem[_2070 + mem[_2070]]:
                                else:
                                    if 1 < mem[_1475]:
                                        mem[_1475 + 64] = stor13
                                        if 2 < mem[_1475]:
                                            mem[_1475 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1475 + 100] = ext_call.return_data[0]
                                            mem[_1475 + 132] = _1432
                                            mem[_1475 + 164] = 160
                                            mem[_1475 + 260] = mem[_1475]
                                            idx = 0
                                            s = _1475 + 32
                                            t = _1475 + 292
                                            while idx < mem[_1475]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1475 + 196] = this.address
                                            mem[_1475 + 228] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1475 + (32 * mem[_1475]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2069 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2069] <= test266151307()
                                            require _2069 + return_data.size > _2069 + mem[_2069] + 31
                                            require mem[_2069 + mem[_2069]] <= test266151307()
                                            require (32 * mem[_2069 + mem[_2069]]) + 32 >= 0 and _2069 + ceil32(return_data.size) + (32 * mem[_2069 + mem[_2069]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2069] + (32 * mem[_2069 + mem[_2069]]) + 32
                                            if mem[_2069 + mem[_2069]] - 1 < mem[_2069 + mem[_2069]]:
                        else:
                            _1476 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_1476 + 32 len 96] = call.data[calldata.size len 96]
                            if 0 < mem[_1476]:
                                mem[_1476 + 32] = sub_8ba0eb73Address
                                if stor13 == wantAddress:
                                    if 1 < mem[_1476]:
                                        mem[_1476 + 64] = wantAddress
                                        mem[_1476 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1476 + 132] = ext_call.return_data[0]
                                        mem[_1476 + 164] = _1432
                                        mem[_1476 + 196] = 160
                                        mem[_1476 + 292] = mem[_1476]
                                        idx = 0
                                        s = _1476 + 32
                                        t = _1476 + 324
                                        while idx < mem[_1476]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1476 + 228] = this.address
                                        mem[_1476 + 260] = block.timestamp
                                        require ext_code.size(stor11)
                                        call stor11.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1476 + (32 * mem[_1476]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2072 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2072] <= test266151307()
                                        require _2072 + return_data.size > _2072 + mem[_2072] + 31
                                        require mem[_2072 + mem[_2072]] <= test266151307()
                                        require (32 * mem[_2072 + mem[_2072]]) + 32 >= 0 and _2072 + ceil32(return_data.size) + (32 * mem[_2072 + mem[_2072]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_2072] + (32 * mem[_2072 + mem[_2072]]) + 32
                                        if mem[_2072 + mem[_2072]] - 1 < mem[_2072 + mem[_2072]]:
                                else:
                                    if 1 < mem[_1476]:
                                        mem[_1476 + 64] = stor13
                                        if 2 < mem[_1476]:
                                            mem[_1476 + 96] = wantAddress
                                            mem[_1476 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1476 + 132] = ext_call.return_data[0]
                                            mem[_1476 + 164] = _1432
                                            mem[_1476 + 196] = 160
                                            mem[_1476 + 292] = mem[_1476]
                                            idx = 0
                                            s = _1476 + 32
                                            t = _1476 + 324
                                            while idx < mem[_1476]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1476 + 228] = this.address
                                            mem[_1476 + 260] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1476 + (32 * mem[_1476]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2071 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2071] <= test266151307()
                                            require _2071 + return_data.size > _2071 + mem[_2071] + 31
                                            require mem[_2071 + mem[_2071]] <= test266151307()
                                            require (32 * mem[_2071 + mem[_2071]]) + 32 >= 0 and _2071 + ceil32(return_data.size) + (32 * mem[_2071 + mem[_2071]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2071] + (32 * mem[_2071 + mem[_2071]]) + 32
                                            if mem[_2071 + mem[_2071]] - 1 < mem[_2071 + mem[_2071]]:
        else:
            if stor13 == wantAddress:
                mem[ceil32(return_data.size) + 96] = 2
                mem[ceil32(return_data.size) + 128] = sub_8ba0eb73Address
                if stor13 == wantAddress:
                    mem[ceil32(return_data.size) + 160] = wantAddress
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = ceil32(return_data.size) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _768 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223
                    _780 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = _780
                    require return_data.size >= _768 + (32 * _780) + 32
                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _780] = mem[ceil32(return_data.size) + _768 + 224 len 32 * _780]
                    if _780 - 1 < _780:
                        _1434 = mem[(32 * _780 - 1) + (2 * ceil32(return_data.size)) + 224]
                        mem[mem[64] + 4] = stor11
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        require ext_code.size(sub_8ba0eb73Address)
                        call sub_8ba0eb73Address.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1458 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1458] == bool(mem[_1458])
                        if stor13 == sub_8ba0eb73Address:
                            _1470 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 < mem[_1470]:
                                mem[_1470 + 32] = sub_8ba0eb73Address
                                if stor13 == sub_8ba0eb73Address:
                                    if 1 < mem[_1470]:
                                        mem[_1470 + 64] = wantAddress
                                        mem[_1470 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1470 + 100] = ext_call.return_data[0]
                                        mem[_1470 + 132] = _1434
                                        mem[_1470 + 164] = 160
                                        mem[_1470 + 260] = mem[_1470]
                                        idx = 0
                                        s = _1470 + 32
                                        t = _1470 + 292
                                        while idx < mem[_1470]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1470 + 196] = this.address
                                        mem[_1470 + 228] = block.timestamp
                                        require ext_code.size(stor11)
                                        call stor11.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1470 + (32 * mem[_1470]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2080 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2080] <= test266151307()
                                        require _2080 + return_data.size > _2080 + mem[_2080] + 31
                                        require mem[_2080 + mem[_2080]] <= test266151307()
                                        require (32 * mem[_2080 + mem[_2080]]) + 32 >= 0 and _2080 + ceil32(return_data.size) + (32 * mem[_2080 + mem[_2080]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_2080] + (32 * mem[_2080 + mem[_2080]]) + 32
                                        if mem[_2080 + mem[_2080]] - 1 < mem[_2080 + mem[_2080]]:
                                else:
                                    if 1 < mem[_1470]:
                                        mem[_1470 + 64] = stor13
                                        if 2 < mem[_1470]:
                                            mem[_1470 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1470 + 100] = ext_call.return_data[0]
                                            mem[_1470 + 132] = _1434
                                            mem[_1470 + 164] = 160
                                            mem[_1470 + 260] = mem[_1470]
                                            idx = 0
                                            s = _1470 + 32
                                            t = _1470 + 292
                                            while idx < mem[_1470]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1470 + 196] = this.address
                                            mem[_1470 + 228] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1470 + (32 * mem[_1470]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2079 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2079] <= test266151307()
                                            require _2079 + return_data.size > _2079 + mem[_2079] + 31
                                            require mem[_2079 + mem[_2079]] <= test266151307()
                                            require (32 * mem[_2079 + mem[_2079]]) + 32 >= 0 and _2079 + ceil32(return_data.size) + (32 * mem[_2079 + mem[_2079]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2079] + (32 * mem[_2079 + mem[_2079]]) + 32
                                            if mem[_2079 + mem[_2079]] - 1 < mem[_2079 + mem[_2079]]:
                        else:
                            if stor13 == wantAddress:
                                _1479 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 < mem[_1479]:
                                    mem[_1479 + 32] = sub_8ba0eb73Address
                                    if stor13 == wantAddress:
                                        if 1 < mem[_1479]:
                                            mem[_1479 + 64] = wantAddress
                                            mem[_1479 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1479 + 100] = ext_call.return_data[0]
                                            mem[_1479 + 132] = _1434
                                            mem[_1479 + 164] = 160
                                            mem[_1479 + 260] = mem[_1479]
                                            idx = 0
                                            s = _1479 + 32
                                            t = _1479 + 292
                                            while idx < mem[_1479]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1479 + 196] = this.address
                                            mem[_1479 + 228] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1479 + (32 * mem[_1479]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2082 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2082] <= test266151307()
                                            require _2082 + return_data.size > _2082 + mem[_2082] + 31
                                            require mem[_2082 + mem[_2082]] <= test266151307()
                                            require (32 * mem[_2082 + mem[_2082]]) + 32 >= 0 and _2082 + ceil32(return_data.size) + (32 * mem[_2082 + mem[_2082]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2082] + (32 * mem[_2082 + mem[_2082]]) + 32
                                            if mem[_2082 + mem[_2082]] - 1 < mem[_2082 + mem[_2082]]:
                                    else:
                                        if 1 < mem[_1479]:
                                            mem[_1479 + 64] = stor13
                                            if 2 < mem[_1479]:
                                                mem[_1479 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_1479 + 100] = ext_call.return_data[0]
                                                mem[_1479 + 132] = _1434
                                                mem[_1479 + 164] = 160
                                                mem[_1479 + 260] = mem[_1479]
                                                idx = 0
                                                s = _1479 + 32
                                                t = _1479 + 292
                                                while idx < mem[_1479]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_1479 + 196] = this.address
                                                mem[_1479 + 228] = block.timestamp
                                                require ext_code.size(stor11)
                                                call stor11.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _1479 + (32 * mem[_1479]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2081 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2081] <= test266151307()
                                                require _2081 + return_data.size > _2081 + mem[_2081] + 31
                                                require mem[_2081 + mem[_2081]] <= test266151307()
                                                require (32 * mem[_2081 + mem[_2081]]) + 32 >= 0 and _2081 + ceil32(return_data.size) + (32 * mem[_2081 + mem[_2081]]) + 32 <= test266151307()
                                                require return_data.size >= mem[_2081] + (32 * mem[_2081 + mem[_2081]]) + 32
                                                if mem[_2081 + mem[_2081]] - 1 < mem[_2081 + mem[_2081]]:
                            else:
                                _1480 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_1480 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 < mem[_1480]:
                                    mem[_1480 + 32] = sub_8ba0eb73Address
                                    if stor13 == wantAddress:
                                        if 1 < mem[_1480]:
                                            mem[_1480 + 64] = wantAddress
                                            mem[_1480 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1480 + 132] = ext_call.return_data[0]
                                            mem[_1480 + 164] = _1434
                                            mem[_1480 + 196] = 160
                                            mem[_1480 + 292] = mem[_1480]
                                            idx = 0
                                            s = _1480 + 32
                                            t = _1480 + 324
                                            while idx < mem[_1480]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1480 + 228] = this.address
                                            mem[_1480 + 260] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1480 + (32 * mem[_1480]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2084 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2084] <= test266151307()
                                            require _2084 + return_data.size > _2084 + mem[_2084] + 31
                                            require mem[_2084 + mem[_2084]] <= test266151307()
                                            require (32 * mem[_2084 + mem[_2084]]) + 32 >= 0 and _2084 + ceil32(return_data.size) + (32 * mem[_2084 + mem[_2084]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2084] + (32 * mem[_2084 + mem[_2084]]) + 32
                                            if mem[_2084 + mem[_2084]] - 1 < mem[_2084 + mem[_2084]]:
                                    else:
                                        if 1 < mem[_1480]:
                                            mem[_1480 + 64] = stor13
                                            if 2 < mem[_1480]:
                                                mem[_1480 + 96] = wantAddress
                                                mem[_1480 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_1480 + 132] = ext_call.return_data[0]
                                                mem[_1480 + 164] = _1434
                                                mem[_1480 + 196] = 160
                                                mem[_1480 + 292] = mem[_1480]
                                                idx = 0
                                                s = _1480 + 32
                                                t = _1480 + 324
                                                while idx < mem[_1480]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_1480 + 228] = this.address
                                                mem[_1480 + 260] = block.timestamp
                                                require ext_code.size(stor11)
                                                call stor11.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _1480 + (32 * mem[_1480]) + -mem[64] + 320]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2083 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2083] <= test266151307()
                                                require _2083 + return_data.size > _2083 + mem[_2083] + 31
                                                require mem[_2083 + mem[_2083]] <= test266151307()
                                                require (32 * mem[_2083 + mem[_2083]]) + 32 >= 0 and _2083 + ceil32(return_data.size) + (32 * mem[_2083 + mem[_2083]]) + 32 <= test266151307()
                                                require return_data.size >= mem[_2083] + (32 * mem[_2083 + mem[_2083]]) + 32
                                                if mem[_2083 + mem[_2083]] - 1 < mem[_2083 + mem[_2083]]:
            else:
                mem[ceil32(return_data.size) + 96] = 3
                mem[ceil32(return_data.size) + 128 len 96] = call.data[calldata.size len 96]
                mem[ceil32(return_data.size) + 128] = sub_8ba0eb73Address
                if stor13 == wantAddress:
                    mem[ceil32(return_data.size) + 160] = wantAddress
                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 260] = 64
                    mem[ceil32(return_data.size) + 292] = 3
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = ceil32(return_data.size) + 324
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _770 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 224 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255
                    _782 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256
                    mem[(2 * ceil32(return_data.size)) + 224] = _782
                    require return_data.size >= _770 + (32 * _782) + 32
                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _782] = mem[ceil32(return_data.size) + _770 + 256 len 32 * _782]
                    if _782 - 1 < _782:
                        _1436 = mem[(32 * _782 - 1) + (2 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 4] = stor11
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        require ext_code.size(sub_8ba0eb73Address)
                        call sub_8ba0eb73Address.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1460] == bool(mem[_1460])
                        if stor13 == sub_8ba0eb73Address:
                            _1472 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 < mem[_1472]:
                                mem[_1472 + 32] = sub_8ba0eb73Address
                                if stor13 == sub_8ba0eb73Address:
                                    if 1 < mem[_1472]:
                                        mem[_1472 + 64] = wantAddress
                                        mem[_1472 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1472 + 100] = ext_call.return_data[0]
                                        mem[_1472 + 132] = _1436
                                        mem[_1472 + 164] = 160
                                        mem[_1472 + 260] = mem[_1472]
                                        idx = 0
                                        s = _1472 + 32
                                        t = _1472 + 292
                                        while idx < mem[_1472]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1472 + 196] = this.address
                                        mem[_1472 + 228] = block.timestamp
                                        require ext_code.size(stor11)
                                        call stor11.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1472 + (32 * mem[_1472]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2092 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2092] <= test266151307()
                                        require _2092 + return_data.size > _2092 + mem[_2092] + 31
                                        require mem[_2092 + mem[_2092]] <= test266151307()
                                        require (32 * mem[_2092 + mem[_2092]]) + 32 >= 0 and _2092 + ceil32(return_data.size) + (32 * mem[_2092 + mem[_2092]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_2092] + (32 * mem[_2092 + mem[_2092]]) + 32
                                        if mem[_2092 + mem[_2092]] - 1 < mem[_2092 + mem[_2092]]:
                                else:
                                    if 1 < mem[_1472]:
                                        mem[_1472 + 64] = stor13
                                        if 2 < mem[_1472]:
                                            mem[_1472 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1472 + 100] = ext_call.return_data[0]
                                            mem[_1472 + 132] = _1436
                                            mem[_1472 + 164] = 160
                                            mem[_1472 + 260] = mem[_1472]
                                            idx = 0
                                            s = _1472 + 32
                                            t = _1472 + 292
                                            while idx < mem[_1472]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1472 + 196] = this.address
                                            mem[_1472 + 228] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1472 + (32 * mem[_1472]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2091 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2091] <= test266151307()
                                            require _2091 + return_data.size > _2091 + mem[_2091] + 31
                                            require mem[_2091 + mem[_2091]] <= test266151307()
                                            require (32 * mem[_2091 + mem[_2091]]) + 32 >= 0 and _2091 + ceil32(return_data.size) + (32 * mem[_2091 + mem[_2091]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2091] + (32 * mem[_2091 + mem[_2091]]) + 32
                                            if mem[_2091 + mem[_2091]] - 1 < mem[_2091 + mem[_2091]]:
                        else:
                            if stor13 == wantAddress:
                                _1483 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 < mem[_1483]:
                                    mem[_1483 + 32] = sub_8ba0eb73Address
                                    if stor13 == wantAddress:
                                        if 1 < mem[_1483]:
                                            mem[_1483 + 64] = wantAddress
                                            mem[_1483 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1483 + 100] = ext_call.return_data[0]
                                            mem[_1483 + 132] = _1436
                                            mem[_1483 + 164] = 160
                                            mem[_1483 + 260] = mem[_1483]
                                            idx = 0
                                            s = _1483 + 32
                                            t = _1483 + 292
                                            while idx < mem[_1483]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1483 + 196] = this.address
                                            mem[_1483 + 228] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1483 + (32 * mem[_1483]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2094 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2094] <= test266151307()
                                            require _2094 + return_data.size > _2094 + mem[_2094] + 31
                                            require mem[_2094 + mem[_2094]] <= test266151307()
                                            require (32 * mem[_2094 + mem[_2094]]) + 32 >= 0 and _2094 + ceil32(return_data.size) + (32 * mem[_2094 + mem[_2094]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2094] + (32 * mem[_2094 + mem[_2094]]) + 32
                                            if mem[_2094 + mem[_2094]] - 1 < mem[_2094 + mem[_2094]]:
                                    else:
                                        if 1 < mem[_1483]:
                                            mem[_1483 + 64] = stor13
                                            if 2 < mem[_1483]:
                                                mem[_1483 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_1483 + 100] = ext_call.return_data[0]
                                                mem[_1483 + 132] = _1436
                                                mem[_1483 + 164] = 160
                                                mem[_1483 + 260] = mem[_1483]
                                                idx = 0
                                                s = _1483 + 32
                                                t = _1483 + 292
                                                while idx < mem[_1483]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_1483 + 196] = this.address
                                                mem[_1483 + 228] = block.timestamp
                                                require ext_code.size(stor11)
                                                call stor11.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _1483 + (32 * mem[_1483]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2093 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2093] <= test266151307()
                                                require _2093 + return_data.size > _2093 + mem[_2093] + 31
                                                require mem[_2093 + mem[_2093]] <= test266151307()
                                                require (32 * mem[_2093 + mem[_2093]]) + 32 >= 0 and _2093 + ceil32(return_data.size) + (32 * mem[_2093 + mem[_2093]]) + 32 <= test266151307()
                                                require return_data.size >= mem[_2093] + (32 * mem[_2093 + mem[_2093]]) + 32
                                                if mem[_2093 + mem[_2093]] - 1 < mem[_2093 + mem[_2093]]:
                            else:
                                _1484 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_1484 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 < mem[_1484]:
                                    mem[_1484 + 32] = sub_8ba0eb73Address
                                    if stor13 == wantAddress:
                                        if 1 < mem[_1484]:
                                            mem[_1484 + 64] = wantAddress
                                            mem[_1484 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1484 + 132] = ext_call.return_data[0]
                                            mem[_1484 + 164] = _1436
                                            mem[_1484 + 196] = 160
                                            mem[_1484 + 292] = mem[_1484]
                                            idx = 0
                                            s = _1484 + 32
                                            t = _1484 + 324
                                            while idx < mem[_1484]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1484 + 228] = this.address
                                            mem[_1484 + 260] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1484 + (32 * mem[_1484]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2096 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2096] <= test266151307()
                                            require _2096 + return_data.size > _2096 + mem[_2096] + 31
                                            require mem[_2096 + mem[_2096]] <= test266151307()
                                            require (32 * mem[_2096 + mem[_2096]]) + 32 >= 0 and _2096 + ceil32(return_data.size) + (32 * mem[_2096 + mem[_2096]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2096] + (32 * mem[_2096 + mem[_2096]]) + 32
                                            if mem[_2096 + mem[_2096]] - 1 < mem[_2096 + mem[_2096]]:
                                    else:
                                        if 1 < mem[_1484]:
                                            mem[_1484 + 64] = stor13
                                            if 2 < mem[_1484]:
                                                mem[_1484 + 96] = wantAddress
                                                mem[_1484 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_1484 + 132] = ext_call.return_data[0]
                                                mem[_1484 + 164] = _1436
                                                mem[_1484 + 196] = 160
                                                mem[_1484 + 292] = mem[_1484]
                                                idx = 0
                                                s = _1484 + 32
                                                t = _1484 + 324
                                                while idx < mem[_1484]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_1484 + 228] = this.address
                                                mem[_1484 + 260] = block.timestamp
                                                require ext_code.size(stor11)
                                                call stor11.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _1484 + (32 * mem[_1484]) + -mem[64] + 320]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2095 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2095] <= test266151307()
                                                require _2095 + return_data.size > _2095 + mem[_2095] + 31
                                                require mem[_2095 + mem[_2095]] <= test266151307()
                                                require (32 * mem[_2095 + mem[_2095]]) + 32 >= 0 and _2095 + ceil32(return_data.size) + (32 * mem[_2095 + mem[_2095]]) + 32 <= test266151307()
                                                require return_data.size >= mem[_2095] + (32 * mem[_2095 + mem[_2095]]) + 32
                                                if mem[_2095 + mem[_2095]] - 1 < mem[_2095 + mem[_2095]]:
                else:
                    mem[ceil32(return_data.size) + 160] = stor13
                    mem[ceil32(return_data.size) + 192] = wantAddress
                    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 260] = 64
                    mem[ceil32(return_data.size) + 292] = 3
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = ceil32(return_data.size) + 324
                    while idx < 3:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 224
                    require return_data.size >= 32
                    _769 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + return_data.size + 224 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255
                    _781 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= test266151307()
                    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256 <= test266151307()
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 256
                    mem[(2 * ceil32(return_data.size)) + 224] = _781
                    require return_data.size >= _769 + (32 * _781) + 32
                    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _781] = mem[ceil32(return_data.size) + _769 + 256 len 32 * _781]
                    if _781 - 1 < _781:
                        _1435 = mem[(32 * _781 - 1) + (2 * ceil32(return_data.size)) + 256]
                        mem[mem[64] + 4] = stor11
                        mem[mem[64] + 36] = ext_call.return_data[0]
                        require ext_code.size(sub_8ba0eb73Address)
                        call sub_8ba0eb73Address.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor11, ext_call.return_data[0]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1459] == bool(mem[_1459])
                        if stor13 == sub_8ba0eb73Address:
                            _1471 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            if 0 < mem[_1471]:
                                mem[_1471 + 32] = sub_8ba0eb73Address
                                if stor13 == sub_8ba0eb73Address:
                                    if 1 < mem[_1471]:
                                        mem[_1471 + 64] = wantAddress
                                        mem[_1471 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1471 + 100] = ext_call.return_data[0]
                                        mem[_1471 + 132] = _1435
                                        mem[_1471 + 164] = 160
                                        mem[_1471 + 260] = mem[_1471]
                                        idx = 0
                                        s = _1471 + 32
                                        t = _1471 + 292
                                        while idx < mem[_1471]:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_1471 + 196] = this.address
                                        mem[_1471 + 228] = block.timestamp
                                        require ext_code.size(stor11)
                                        call stor11.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1471 + (32 * mem[_1471]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2086 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2086] <= test266151307()
                                        require _2086 + return_data.size > _2086 + mem[_2086] + 31
                                        require mem[_2086 + mem[_2086]] <= test266151307()
                                        require (32 * mem[_2086 + mem[_2086]]) + 32 >= 0 and _2086 + ceil32(return_data.size) + (32 * mem[_2086 + mem[_2086]]) + 32 <= test266151307()
                                        require return_data.size >= mem[_2086] + (32 * mem[_2086 + mem[_2086]]) + 32
                                        if mem[_2086 + mem[_2086]] - 1 < mem[_2086 + mem[_2086]]:
                                else:
                                    if 1 < mem[_1471]:
                                        mem[_1471 + 64] = stor13
                                        if 2 < mem[_1471]:
                                            mem[_1471 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1471 + 100] = ext_call.return_data[0]
                                            mem[_1471 + 132] = _1435
                                            mem[_1471 + 164] = 160
                                            mem[_1471 + 260] = mem[_1471]
                                            idx = 0
                                            s = _1471 + 32
                                            t = _1471 + 292
                                            while idx < mem[_1471]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1471 + 196] = this.address
                                            mem[_1471 + 228] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1471 + (32 * mem[_1471]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2085 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2085] <= test266151307()
                                            require _2085 + return_data.size > _2085 + mem[_2085] + 31
                                            require mem[_2085 + mem[_2085]] <= test266151307()
                                            require (32 * mem[_2085 + mem[_2085]]) + 32 >= 0 and _2085 + ceil32(return_data.size) + (32 * mem[_2085 + mem[_2085]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2085] + (32 * mem[_2085 + mem[_2085]]) + 32
                                            if mem[_2085 + mem[_2085]] - 1 < mem[_2085 + mem[_2085]]:
                        else:
                            if stor13 == wantAddress:
                                _1481 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 < mem[_1481]:
                                    mem[_1481 + 32] = sub_8ba0eb73Address
                                    if stor13 == wantAddress:
                                        if 1 < mem[_1481]:
                                            mem[_1481 + 64] = wantAddress
                                            mem[_1481 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1481 + 100] = ext_call.return_data[0]
                                            mem[_1481 + 132] = _1435
                                            mem[_1481 + 164] = 160
                                            mem[_1481 + 260] = mem[_1481]
                                            idx = 0
                                            s = _1481 + 32
                                            t = _1481 + 292
                                            while idx < mem[_1481]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1481 + 196] = this.address
                                            mem[_1481 + 228] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1481 + (32 * mem[_1481]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2088 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2088] <= test266151307()
                                            require _2088 + return_data.size > _2088 + mem[_2088] + 31
                                            require mem[_2088 + mem[_2088]] <= test266151307()
                                            require (32 * mem[_2088 + mem[_2088]]) + 32 >= 0 and _2088 + ceil32(return_data.size) + (32 * mem[_2088 + mem[_2088]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2088] + (32 * mem[_2088 + mem[_2088]]) + 32
                                            if mem[_2088 + mem[_2088]] - 1 < mem[_2088 + mem[_2088]]:
                                    else:
                                        if 1 < mem[_1481]:
                                            mem[_1481 + 64] = stor13
                                            if 2 < mem[_1481]:
                                                mem[_1481 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_1481 + 100] = ext_call.return_data[0]
                                                mem[_1481 + 132] = _1435
                                                mem[_1481 + 164] = 160
                                                mem[_1481 + 260] = mem[_1481]
                                                idx = 0
                                                s = _1481 + 32
                                                t = _1481 + 292
                                                while idx < mem[_1481]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_1481 + 196] = this.address
                                                mem[_1481 + 228] = block.timestamp
                                                require ext_code.size(stor11)
                                                call stor11.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _1481 + (32 * mem[_1481]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2087 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2087] <= test266151307()
                                                require _2087 + return_data.size > _2087 + mem[_2087] + 31
                                                require mem[_2087 + mem[_2087]] <= test266151307()
                                                require (32 * mem[_2087 + mem[_2087]]) + 32 >= 0 and _2087 + ceil32(return_data.size) + (32 * mem[_2087 + mem[_2087]]) + 32 <= test266151307()
                                                require return_data.size >= mem[_2087] + (32 * mem[_2087 + mem[_2087]]) + 32
                                                if mem[_2087 + mem[_2087]] - 1 < mem[_2087 + mem[_2087]]:
                            else:
                                _1482 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_1482 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 < mem[_1482]:
                                    mem[_1482 + 32] = sub_8ba0eb73Address
                                    if stor13 == wantAddress:
                                        if 1 < mem[_1482]:
                                            mem[_1482 + 64] = wantAddress
                                            mem[_1482 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1482 + 132] = ext_call.return_data[0]
                                            mem[_1482 + 164] = _1435
                                            mem[_1482 + 196] = 160
                                            mem[_1482 + 292] = mem[_1482]
                                            idx = 0
                                            s = _1482 + 32
                                            t = _1482 + 324
                                            while idx < mem[_1482]:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_1482 + 228] = this.address
                                            mem[_1482 + 260] = block.timestamp
                                            require ext_code.size(stor11)
                                            call stor11.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1482 + (32 * mem[_1482]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2090 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2090] <= test266151307()
                                            require _2090 + return_data.size > _2090 + mem[_2090] + 31
                                            require mem[_2090 + mem[_2090]] <= test266151307()
                                            require (32 * mem[_2090 + mem[_2090]]) + 32 >= 0 and _2090 + ceil32(return_data.size) + (32 * mem[_2090 + mem[_2090]]) + 32 <= test266151307()
                                            require return_data.size >= mem[_2090] + (32 * mem[_2090 + mem[_2090]]) + 32
                                            if mem[_2090 + mem[_2090]] - 1 < mem[_2090 + mem[_2090]]:
                                    else:
                                        if 1 < mem[_1482]:
                                            mem[_1482 + 64] = stor13
                                            if 2 < mem[_1482]:
                                                mem[_1482 + 96] = wantAddress
                                                mem[_1482 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_1482 + 132] = ext_call.return_data[0]
                                                mem[_1482 + 164] = _1435
                                                mem[_1482 + 196] = 160
                                                mem[_1482 + 292] = mem[_1482]
                                                idx = 0
                                                s = _1482 + 32
                                                t = _1482 + 324
                                                while idx < mem[_1482]:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_1482 + 228] = this.address
                                                mem[_1482 + 260] = block.timestamp
                                                require ext_code.size(stor11)
                                                call stor11.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _1482 + (32 * mem[_1482]) + -mem[64] + 320]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2089 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2089] <= test266151307()
                                                require _2089 + return_data.size > _2089 + mem[_2089] + 31
                                                require mem[_2089 + mem[_2089]] <= test266151307()
                                                require (32 * mem[_2089 + mem[_2089]]) + 32 >= 0 and _2089 + ceil32(return_data.size) + (32 * mem[_2089 + mem[_2089]]) + 32 <= test266151307()
                                                require return_data.size >= mem[_2089] + (32 * mem[_2089 + mem[_2089]]) + 32
                                                if mem[_2089 + mem[_2089]] - 1 < mem[_2089 + mem[_2089]]:
    revert
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
    require ext_code.size(address(jTokenAddress))
    staticcall address(jTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 < sub_9a24378a:
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(sub_8ba0eb73Address)
            staticcall sub_8ba0eb73Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(jTokenAddress))
                staticcall address(jTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 100] = arg1
                mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                require ext_code.size(address(jTokenAddress))
                call address(jTokenAddress).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(8 * ceil32(return_data.size)) + 132] = arg1
                mem[(8 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 96] = 68
                mem[(8 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
                mem[(8 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 196] = 32
                mem[(8 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + 328] = 0
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
                    mem[(8 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 292] == bool(mem[(8 * ceil32(return_data.size)) + 292])
                        if not mem[(8 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 132] = arg1
                mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 96] = 68
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 196] = 32
                mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_8ba0eb73Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 328] = 0
                call sub_8ba0eb73Address with:
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
                    mem[(4 * ceil32(return_data.size)) + 264] = this.address
                    require ext_code.size(address(jTokenAddress))
                    staticcall address(jTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 264] = arg1
                    mem[(6 * ceil32(return_data.size)) + 296] = ext_call.return_data[0]
                    require ext_code.size(address(jTokenAddress))
                    call address(jTokenAddress).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + 264] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 296] = arg1
                    mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 260] = 68
                    mem[(8 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 360] = 32
                    mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 492] = 0
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
                        mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                            if not mem[(8 * ceil32(return_data.size)) + 456]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(address(jTokenAddress))
                    staticcall address(jTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = arg1
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = ext_call.return_data[0]
                    require ext_code.size(address(jTokenAddress))
                    call address(jTokenAddress).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
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
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 1
            mem[(2 * ceil32(return_data.size)) + 160] = 1
            mem[(2 * ceil32(return_data.size)) + 128] = address(jTokenAddress)
            mem[(2 * ceil32(return_data.size)) + 192] = this.address
            mem[(2 * ceil32(return_data.size)) + 224] = 0x8805714b00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 160
            mem[(2 * ceil32(return_data.size)) + 388] = 1
            idx = 0
            s = (2 * ceil32(return_data.size)) + 192
            t = (2 * ceil32(return_data.size)) + 420
            while idx < 1:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 292] = 224
            mem[(2 * ceil32(return_data.size)) + 452] = 1
            idx = 0
            s = (2 * ceil32(return_data.size)) + 484
            t = (2 * ceil32(return_data.size)) + 128
            while idx < 1:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 324] = 0
            mem[(2 * ceil32(return_data.size)) + 356] = 1
            require ext_code.size(joetrollerAddress)
            call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                 gas gas_remaining wei
                args 0, 160, 224, 0, 1, 1, mem[(2 * ceil32(return_data.size)) + 420], 1, mem[(2 * ceil32(return_data.size)) + 484]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor21 = block.timestamp
            mem[(2 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(sub_8ba0eb73Address)
            staticcall sub_8ba0eb73Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(address(jTokenAddress))
                staticcall address(jTokenAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 228] = arg1
                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                require ext_code.size(address(jTokenAddress))
                call address(jTokenAddress).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(8 * ceil32(return_data.size)) + 260] = arg1
                mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 224] = 68
                mem[(8 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 324] = 32
                mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 388 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + 456] = 0
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
                    mem[(8 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(8 * ceil32(return_data.size)) + 420] == bool(mem[(8 * ceil32(return_data.size)) + 420])
                        if not mem[(8 * ceil32(return_data.size)) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 260] = arg1
                mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 224] = 68
                mem[(4 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 324] = 32
                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_8ba0eb73Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 388 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 456] = 0
                call sub_8ba0eb73Address with:
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
                    mem[(4 * ceil32(return_data.size)) + 392] = this.address
                    require ext_code.size(address(jTokenAddress))
                    staticcall address(jTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 392] = arg1
                    mem[(6 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                    require ext_code.size(address(jTokenAddress))
                    call address(jTokenAddress).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 456 len 9 * ceil32(return_data.size)]
                    mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + 424] = arg1
                    mem[(8 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 388] = 68
                    mem[(8 * ceil32(return_data.size)) + 420 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + 488] = 32
                    mem[(8 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + 552 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 620] = 0
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
                        mem[(8 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + 584] == bool(mem[(8 * ceil32(return_data.size)) + 584])
                            if not mem[(8 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 388] = return_data.size
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
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                    require ext_code.size(address(jTokenAddress))
                    staticcall address(jTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                    require ext_code.size(address(jTokenAddress))
                    call address(jTokenAddress).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 9 * ceil32(return_data.size)]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = unknown_0xa9059cbb(?????)
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
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
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(12 * ceil32(return_data.size)) + 654 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                            if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(12 * ceil32(return_data.size)) + 686 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = 0
        mem[(2 * ceil32(return_data.size)) + 132] = address(jTokenAddress)
        require ext_code.size(sub_57cf3aeeAddress)
        staticcall sub_57cf3aeeAddress.0x30ce638 with:
                gas gas_remaining wei
               args 0, address(jTokenAddress)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(jTokenAddress))
        staticcall address(jTokenAddress).0x18160ddd with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(6 * ceil32(return_data.size)) + 96] = 26
            mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            mem[(6 * ceil32(return_data.size)) + 160] = 30
            mem[(6 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
            if stor21 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - stor21:
                if 0 < sub_9a24378a:
                    mem[(6 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(address(jTokenAddress))
                        staticcall address(jTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 228] = arg1
                        mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        require ext_code.size(address(jTokenAddress))
                        call address(jTokenAddress).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(10 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 260] = arg1
                        mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 224] = 68
                        mem[(11 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                        mem[(11 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 324] = 32
                        mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 456] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 420] == bool(mem[(11 * ceil32(return_data.size)) + 420])
                                if not mem[(11 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 260] = arg1
                        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 224] = 68
                        mem[(7 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                        mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(7 * ceil32(return_data.size)) + 324] = 32
                        mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 456] = 0
                        call sub_8ba0eb73Address with:
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
                            mem[(7 * ceil32(return_data.size)) + 392] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 392] = arg1
                            mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 392] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 424] = arg1
                            mem[(11 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 388] = 68
                            mem[(11 * ceil32(return_data.size)) + 420 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + 488] = 32
                            mem[(11 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + 552 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + 620] = 0
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
                                mem[(11 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + 584] == bool(mem[(11 * ceil32(return_data.size)) + 584])
                                    if not mem[(11 * ceil32(return_data.size)) + 584]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 388] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                                if not mem[(7 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg1
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
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
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(14 * ceil32(return_data.size)) + 654 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                                    if not mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(14 * ceil32(return_data.size)) + 686 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[(6 * ceil32(return_data.size)) + 224] = 1
                    mem[(6 * ceil32(return_data.size)) + 288] = 1
                    mem[(6 * ceil32(return_data.size)) + 256] = address(jTokenAddress)
                    mem[(6 * ceil32(return_data.size)) + 320] = this.address
                    mem[(6 * ceil32(return_data.size)) + 352] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 356] = 0
                    mem[(6 * ceil32(return_data.size)) + 388] = 160
                    mem[(6 * ceil32(return_data.size)) + 516] = 1
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 320
                    t = (6 * ceil32(return_data.size)) + 548
                    while idx < 1:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 420] = 224
                    mem[(6 * ceil32(return_data.size)) + 580] = 1
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 612
                    t = (6 * ceil32(return_data.size)) + 256
                    while idx < 1:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 452] = 0
                    mem[(6 * ceil32(return_data.size)) + 484] = 1
                    require ext_code.size(joetrollerAddress)
                    call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                         gas gas_remaining wei
                        args 0, 160, 224, 0, 1, 1, mem[(6 * ceil32(return_data.size)) + 548], 1, mem[(6 * ceil32(return_data.size)) + 612]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor21 = block.timestamp
                    mem[(6 * ceil32(return_data.size)) + 356] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(address(jTokenAddress))
                        staticcall address(jTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 356] = arg1
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        require ext_code.size(address(jTokenAddress))
                        call address(jTokenAddress).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(10 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 388] = arg1
                        mem[(11 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 352] = 68
                        mem[(11 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 452] = 32
                        mem[(11 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 516 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 584] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 548] == bool(mem[(11 * ceil32(return_data.size)) + 548])
                                if not mem[(11 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 388] = arg1
                        mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 352] = 68
                        mem[(7 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(7 * ceil32(return_data.size)) + 452] = 32
                        mem[(7 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 516 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 584] = 0
                        call sub_8ba0eb73Address with:
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
                            mem[(7 * ceil32(return_data.size)) + 520] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 520] = arg1
                            mem[(8 * ceil32(return_data.size)) + 552] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 520 len ceil32(return_data.size) + 64]
                            mem[(8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 520] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 552] = arg1
                            mem[(12 * ceil32(return_data.size)) + 584] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + 516] = 68
                            mem[(12 * ceil32(return_data.size)) + 548 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + 616] = 32
                            mem[(12 * ceil32(return_data.size)) + 648] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + 680 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + 748] = 0
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
                                mem[(12 * ceil32(return_data.size)) + 712 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + 712] == bool(mem[(12 * ceil32(return_data.size)) + 712])
                                    if not mem[(12 * ceil32(return_data.size)) + 712]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 516] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 548] == bool(mem[(7 * ceil32(return_data.size)) + 548])
                                if not mem[(7 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len ceil32(return_data.size) + 64]
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = arg1
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = 68
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 32
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 0
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
                                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(15 * ceil32(return_data.size)) + 782 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] == bool(mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713])
                                    if not mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(15 * ceil32(return_data.size)) + 814 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                if (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]) / block.timestamp - stor21 != 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]) < sub_9a24378a:
                    mem[(6 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(address(jTokenAddress))
                        staticcall address(jTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 228] = arg1
                        mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        require ext_code.size(address(jTokenAddress))
                        call address(jTokenAddress).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(10 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 260] = arg1
                        mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 224] = 68
                        mem[(11 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                        mem[(11 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 324] = 32
                        mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 456] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 420] == bool(mem[(11 * ceil32(return_data.size)) + 420])
                                if not mem[(11 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 260] = arg1
                        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 224] = 68
                        mem[(7 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                        mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(7 * ceil32(return_data.size)) + 324] = 32
                        mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 456] = 0
                        call sub_8ba0eb73Address with:
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
                            mem[(7 * ceil32(return_data.size)) + 392] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 392] = arg1
                            mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 392] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 424] = arg1
                            mem[(11 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 388] = 68
                            mem[(11 * ceil32(return_data.size)) + 420 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + 488] = 32
                            mem[(11 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + 552 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + 620] = 0
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
                                mem[(11 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + 584] == bool(mem[(11 * ceil32(return_data.size)) + 584])
                                    if not mem[(11 * ceil32(return_data.size)) + 584]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 388] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                                if not mem[(7 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg1
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
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
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(14 * ceil32(return_data.size)) + 654 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                                    if not mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(14 * ceil32(return_data.size)) + 686 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[(6 * ceil32(return_data.size)) + 224] = 1
                    mem[(6 * ceil32(return_data.size)) + 288] = 1
                    mem[(6 * ceil32(return_data.size)) + 256] = address(jTokenAddress)
                    mem[(6 * ceil32(return_data.size)) + 320] = this.address
                    mem[(6 * ceil32(return_data.size)) + 352] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 356] = 0
                    mem[(6 * ceil32(return_data.size)) + 388] = 160
                    mem[(6 * ceil32(return_data.size)) + 516] = 1
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 320
                    t = (6 * ceil32(return_data.size)) + 548
                    while idx < 1:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 420] = 224
                    mem[(6 * ceil32(return_data.size)) + 580] = 1
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 612
                    t = (6 * ceil32(return_data.size)) + 256
                    while idx < 1:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 452] = 0
                    mem[(6 * ceil32(return_data.size)) + 484] = 1
                    require ext_code.size(joetrollerAddress)
                    call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                         gas gas_remaining wei
                        args 0, 160, 224, 0, 1, 1, mem[(6 * ceil32(return_data.size)) + 548], 1, mem[(6 * ceil32(return_data.size)) + 612]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor21 = block.timestamp
                    mem[(6 * ceil32(return_data.size)) + 356] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(address(jTokenAddress))
                        staticcall address(jTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 356] = arg1
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        require ext_code.size(address(jTokenAddress))
                        call address(jTokenAddress).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(10 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 388] = arg1
                        mem[(11 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 352] = 68
                        mem[(11 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 452] = 32
                        mem[(11 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 516 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 584] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 548] == bool(mem[(11 * ceil32(return_data.size)) + 548])
                                if not mem[(11 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 388] = arg1
                        mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 352] = 68
                        mem[(7 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(7 * ceil32(return_data.size)) + 452] = 32
                        mem[(7 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 516 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 584] = 0
                        call sub_8ba0eb73Address with:
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
                            mem[(7 * ceil32(return_data.size)) + 520] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 520] = arg1
                            mem[(8 * ceil32(return_data.size)) + 552] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 520 len ceil32(return_data.size) + 64]
                            mem[(8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 520] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 552] = arg1
                            mem[(12 * ceil32(return_data.size)) + 584] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + 516] = 68
                            mem[(12 * ceil32(return_data.size)) + 548 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + 616] = 32
                            mem[(12 * ceil32(return_data.size)) + 648] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + 680 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + 748] = 0
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
                                mem[(12 * ceil32(return_data.size)) + 712 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + 712] == bool(mem[(12 * ceil32(return_data.size)) + 712])
                                    if not mem[(12 * ceil32(return_data.size)) + 712]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 516] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 548] == bool(mem[(7 * ceil32(return_data.size)) + 548])
                                if not mem[(7 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len ceil32(return_data.size) + 64]
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = arg1
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = 68
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 32
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 0
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
                                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(15 * ceil32(return_data.size)) + 782 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] == bool(mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713])
                                    if not mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(15 * ceil32(return_data.size)) + 814 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(6 * ceil32(return_data.size)) + 96] = 26
            mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            mem[(6 * ceil32(return_data.size)) + 160] = 30
            mem[(6 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
            if stor21 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - stor21:
                if 0 < sub_9a24378a:
                    mem[(6 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(address(jTokenAddress))
                        staticcall address(jTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 228] = arg1
                        mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        require ext_code.size(address(jTokenAddress))
                        call address(jTokenAddress).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(10 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 260] = arg1
                        mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 224] = 68
                        mem[(11 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                        mem[(11 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 324] = 32
                        mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 456] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 420] == bool(mem[(11 * ceil32(return_data.size)) + 420])
                                if not mem[(11 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 260] = arg1
                        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 224] = 68
                        mem[(7 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                        mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(7 * ceil32(return_data.size)) + 324] = 32
                        mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 456] = 0
                        call sub_8ba0eb73Address with:
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
                            mem[(7 * ceil32(return_data.size)) + 392] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 392] = arg1
                            mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 392] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 424] = arg1
                            mem[(11 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 388] = 68
                            mem[(11 * ceil32(return_data.size)) + 420 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + 488] = 32
                            mem[(11 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + 552 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + 620] = 0
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
                                mem[(11 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + 584] == bool(mem[(11 * ceil32(return_data.size)) + 584])
                                    if not mem[(11 * ceil32(return_data.size)) + 584]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 388] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                                if not mem[(7 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg1
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
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
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(14 * ceil32(return_data.size)) + 654 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                                    if not mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(14 * ceil32(return_data.size)) + 686 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[(6 * ceil32(return_data.size)) + 224] = 1
                    mem[(6 * ceil32(return_data.size)) + 288] = 1
                    mem[(6 * ceil32(return_data.size)) + 256] = address(jTokenAddress)
                    mem[(6 * ceil32(return_data.size)) + 320] = this.address
                    mem[(6 * ceil32(return_data.size)) + 352] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 356] = 0
                    mem[(6 * ceil32(return_data.size)) + 388] = 160
                    mem[(6 * ceil32(return_data.size)) + 516] = 1
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 320
                    t = (6 * ceil32(return_data.size)) + 548
                    while idx < 1:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 420] = 224
                    mem[(6 * ceil32(return_data.size)) + 580] = 1
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 612
                    t = (6 * ceil32(return_data.size)) + 256
                    while idx < 1:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 452] = 0
                    mem[(6 * ceil32(return_data.size)) + 484] = 1
                    require ext_code.size(joetrollerAddress)
                    call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                         gas gas_remaining wei
                        args 0, 160, 224, 0, 1, 1, mem[(6 * ceil32(return_data.size)) + 548], 1, mem[(6 * ceil32(return_data.size)) + 612]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor21 = block.timestamp
                    mem[(6 * ceil32(return_data.size)) + 356] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(address(jTokenAddress))
                        staticcall address(jTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 356] = arg1
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        require ext_code.size(address(jTokenAddress))
                        call address(jTokenAddress).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(10 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 388] = arg1
                        mem[(11 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 352] = 68
                        mem[(11 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 452] = 32
                        mem[(11 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 516 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 584] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 548] == bool(mem[(11 * ceil32(return_data.size)) + 548])
                                if not mem[(11 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 388] = arg1
                        mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 352] = 68
                        mem[(7 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(7 * ceil32(return_data.size)) + 452] = 32
                        mem[(7 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 516 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 584] = 0
                        call sub_8ba0eb73Address with:
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
                            mem[(7 * ceil32(return_data.size)) + 520] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 520] = arg1
                            mem[(8 * ceil32(return_data.size)) + 552] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 520 len ceil32(return_data.size) + 64]
                            mem[(8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 520] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 552] = arg1
                            mem[(12 * ceil32(return_data.size)) + 584] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + 516] = 68
                            mem[(12 * ceil32(return_data.size)) + 548 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + 616] = 32
                            mem[(12 * ceil32(return_data.size)) + 648] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + 680 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + 748] = 0
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
                                mem[(12 * ceil32(return_data.size)) + 712 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + 712] == bool(mem[(12 * ceil32(return_data.size)) + 712])
                                    if not mem[(12 * ceil32(return_data.size)) + 712]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 516] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 548] == bool(mem[(7 * ceil32(return_data.size)) + 548])
                                if not mem[(7 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len ceil32(return_data.size) + 64]
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = arg1
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = 68
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 32
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 0
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
                                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(15 * ceil32(return_data.size)) + 782 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] == bool(mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713])
                                    if not mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(15 * ceil32(return_data.size)) + 814 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / block.timestamp - stor21 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) < sub_9a24378a:
                    mem[(6 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(address(jTokenAddress))
                        staticcall address(jTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 228] = arg1
                        mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        require ext_code.size(address(jTokenAddress))
                        call address(jTokenAddress).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(10 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 260] = arg1
                        mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 224] = 68
                        mem[(11 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                        mem[(11 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 324] = 32
                        mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 456] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 420] == bool(mem[(11 * ceil32(return_data.size)) + 420])
                                if not mem[(11 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 260] = arg1
                        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 224] = 68
                        mem[(7 * ceil32(return_data.size)) + 260 len 28] = address(arg1) << 64
                        mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
                        mem[(7 * ceil32(return_data.size)) + 324] = 32
                        mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 456] = 0
                        call sub_8ba0eb73Address with:
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
                            mem[(7 * ceil32(return_data.size)) + 392] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 392] = arg1
                            mem[(8 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 392] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + 424] = arg1
                            mem[(11 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 388] = 68
                            mem[(11 * ceil32(return_data.size)) + 420 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + 488] = 32
                            mem[(11 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + 552 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + 620] = 0
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
                                mem[(11 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + 584] == bool(mem[(11 * ceil32(return_data.size)) + 584])
                                    if not mem[(11 * ceil32(return_data.size)) + 584]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 388] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                                if not mem[(7 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg1
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = unknown_0xa9059cbb(?????)
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
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
                                mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(14 * ceil32(return_data.size)) + 654 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                                    if not mem[(11 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(14 * ceil32(return_data.size)) + 686 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    mem[(6 * ceil32(return_data.size)) + 224] = 1
                    mem[(6 * ceil32(return_data.size)) + 288] = 1
                    mem[(6 * ceil32(return_data.size)) + 256] = address(jTokenAddress)
                    mem[(6 * ceil32(return_data.size)) + 320] = this.address
                    mem[(6 * ceil32(return_data.size)) + 352] = 0x8805714b00000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 356] = 0
                    mem[(6 * ceil32(return_data.size)) + 388] = 160
                    mem[(6 * ceil32(return_data.size)) + 516] = 1
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 320
                    t = (6 * ceil32(return_data.size)) + 548
                    while idx < 1:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 420] = 224
                    mem[(6 * ceil32(return_data.size)) + 580] = 1
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 612
                    t = (6 * ceil32(return_data.size)) + 256
                    while idx < 1:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 452] = 0
                    mem[(6 * ceil32(return_data.size)) + 484] = 1
                    require ext_code.size(joetrollerAddress)
                    call joetrollerAddress.claimReward(uint8 arg1, address[] arg2, address[] arg3, bool arg4, bool arg5) with:
                         gas gas_remaining wei
                        args 0, 160, 224, 0, 1, 1, mem[(6 * ceil32(return_data.size)) + 548], 1, mem[(6 * ceil32(return_data.size)) + 612]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor21 = block.timestamp
                    mem[(6 * ceil32(return_data.size)) + 356] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(address(jTokenAddress))
                        staticcall address(jTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(8 * ceil32(return_data.size)) + 356] = arg1
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        require ext_code.size(address(jTokenAddress))
                        call address(jTokenAddress).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(10 * ceil32(return_data.size)) + 356] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(11 * ceil32(return_data.size)) + 388] = arg1
                        mem[(11 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(11 * ceil32(return_data.size)) + 352] = 68
                        mem[(11 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(11 * ceil32(return_data.size)) + 452] = 32
                        mem[(11 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[(11 * ceil32(return_data.size)) + 516 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                        mem[(11 * ceil32(return_data.size)) + 584] = 0
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
                            mem[(11 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(11 * ceil32(return_data.size)) + 548] == bool(mem[(11 * ceil32(return_data.size)) + 548])
                                if not mem[(11 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 388] = arg1
                        mem[(7 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 352] = 68
                        mem[(7 * ceil32(return_data.size)) + 384 len 4] = unknown_0xa9059cbb(?????)
                        mem[(7 * ceil32(return_data.size)) + 452] = 32
                        mem[(7 * ceil32(return_data.size)) + 484] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_8ba0eb73Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 516 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 584] = 0
                        call sub_8ba0eb73Address with:
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
                            mem[(7 * ceil32(return_data.size)) + 520] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + 520] = arg1
                            mem[(8 * ceil32(return_data.size)) + 552] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 520 len ceil32(return_data.size) + 64]
                            mem[(8 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + 520] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + 552] = arg1
                            mem[(12 * ceil32(return_data.size)) + 584] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + 516] = 68
                            mem[(12 * ceil32(return_data.size)) + 548 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + 616] = 32
                            mem[(12 * ceil32(return_data.size)) + 648] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + 680 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + 748] = 0
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
                                mem[(12 * ceil32(return_data.size)) + 712 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + 712] == bool(mem[(12 * ceil32(return_data.size)) + 712])
                                    if not mem[(12 * ceil32(return_data.size)) + 712]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 516] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 548] == bool(mem[(7 * ceil32(return_data.size)) + 548])
                                if not mem[(7 * ceil32(return_data.size)) + 548]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = this.address
                            require ext_code.size(address(jTokenAddress))
                            staticcall address(jTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg1
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = ext_call.return_data[0]
                            require ext_code.size(address(jTokenAddress))
                            call address(jTokenAddress).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len ceil32(return_data.size) + 64]
                            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = arg1
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = ext_call.return_data[0]
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 517] = 68
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 549 len 4] = unknown_0xa9059cbb(?????)
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 32
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(wantAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] = 0
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
                                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(15 * ceil32(return_data.size)) + 782 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] == bool(mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713])
                                    if not mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(15 * ceil32(return_data.size)) + 814 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function estimatedTotalAssets() payable {
    require ext_code.size(address(jTokenAddress))
    staticcall address(jTokenAddress).exchangeRateStored() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(jTokenAddress))
    staticcall address(jTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(address(jTokenAddress))
        staticcall address(jTokenAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 164] = this.address
            require ext_code.size(sub_8ba0eb73Address)
            staticcall sub_8ba0eb73Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0]
            if stor13 == sub_8ba0eb73Address:
                mem[(6 * ceil32(return_data.size)) + 160] = 2
                mem[(6 * ceil32(return_data.size)) + 192] = sub_8ba0eb73Address
                require stor13 == sub_8ba0eb73Address
                mem[(6 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(6 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 292] = 64
                mem[(6 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 192
                t = (6 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _2766 = mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 256 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
                _2826 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
                mem[(7 * ceil32(return_data.size)) + 256] = _2826
                require return_data.size >= _2766 + (32 * _2826) + 32
                mem[(7 * ceil32(return_data.size)) + 288 len 32 * _2826] = mem[(6 * ceil32(return_data.size)) + _2766 + 288 len 32 * _2826]
                require _2826 - 1 < _2826
                _4746 = mem[(32 * _2826 - 1) + (7 * ceil32(return_data.size)) + 288]
                if not mem[(32 * _2826 - 1) + (7 * ceil32(return_data.size)) + 288]:
                    _4866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4866] = 26
                    mem[_4866 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_5286] < mem[_5286]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64]] = mem[_5286]
                else:
                    if 9 * mem[(32 * _2826 - 1) + (7 * ceil32(return_data.size)) + 288] / mem[(32 * _2826 - 1) + (7 * ceil32(return_data.size)) + 288] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4981 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4981] = 26
                    mem[_4981 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5346 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_5346] < mem[_5346]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (9 * _4746 / 10) + mem[_5346] < mem[_5346]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64]] = (9 * _4746 / 10) + mem[_5346]
            else:
                if stor13 == wantAddress:
                    mem[(6 * ceil32(return_data.size)) + 160] = 2
                    mem[(6 * ceil32(return_data.size)) + 192] = sub_8ba0eb73Address
                    require stor13 == wantAddress
                    mem[(6 * ceil32(return_data.size)) + 224] = wantAddress
                    mem[(6 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 292] = 64
                    mem[(6 * ceil32(return_data.size)) + 324] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 192
                    t = (6 * ceil32(return_data.size)) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 356 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _2768 = mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
                    require mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 256 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
                    _2828 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
                    mem[(7 * ceil32(return_data.size)) + 256] = _2828
                    require return_data.size >= _2768 + (32 * _2828) + 32
                    mem[(7 * ceil32(return_data.size)) + 288 len 32 * _2828] = mem[(6 * ceil32(return_data.size)) + _2768 + 288 len 32 * _2828]
                    require _2828 - 1 < _2828
                    _4748 = mem[(32 * _2828 - 1) + (7 * ceil32(return_data.size)) + 288]
                    if not mem[(32 * _2828 - 1) + (7 * ceil32(return_data.size)) + 288]:
                        _4868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4868] = 26
                        mem[_4868 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5288 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5288] < mem[_5288]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64]] = mem[_5288]
                    else:
                        if 9 * mem[(32 * _2828 - 1) + (7 * ceil32(return_data.size)) + 288] / mem[(32 * _2828 - 1) + (7 * ceil32(return_data.size)) + 288] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4985 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4985] = 26
                        mem[_4985 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5348 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_5348] < mem[_5348]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (9 * _4748 / 10) + mem[_5348] < mem[_5348]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64]] = (9 * _4748 / 10) + mem[_5348]
                else:
                    mem[(6 * ceil32(return_data.size)) + 160] = 3
                    mem[(6 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
                    mem[(6 * ceil32(return_data.size)) + 192] = sub_8ba0eb73Address
                    if stor13 == wantAddress:
                        mem[(6 * ceil32(return_data.size)) + 224] = wantAddress
                        mem[(6 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 324] = 64
                        mem[(6 * ceil32(return_data.size)) + 356] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 192
                        t = (6 * ceil32(return_data.size)) + 388
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 388 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        _2770 = mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 288 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                        _2830 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
                        mem[(7 * ceil32(return_data.size)) + 288] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                        require return_data.size >= _2770 + (32 * _2830) + 32
                        mem[(7 * ceil32(return_data.size)) + 320 len 32 * _2830] = mem[(6 * ceil32(return_data.size)) + _2770 + 320 len 32 * _2830]
                        require _2830 - 1 < _2830
                        _4750 = mem[(32 * _2830 - 1) + (7 * ceil32(return_data.size)) + 320]
                        if not mem[(32 * _2830 - 1) + (7 * ceil32(return_data.size)) + 320]:
                            _4870 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4870] = 26
                            mem[_4870 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5290 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5290] < mem[_5290]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = mem[_5290]
                        else:
                            if 9 * mem[(32 * _2830 - 1) + (7 * ceil32(return_data.size)) + 320] / mem[(32 * _2830 - 1) + (7 * ceil32(return_data.size)) + 320] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4989 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4989] = 26
                            mem[_4989 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5350 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5350] < mem[_5350]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (9 * _4750 / 10) + mem[_5350] < mem[_5350]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4750 / 10) + mem[_5350]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 224] = stor13
                        mem[(6 * ceil32(return_data.size)) + 256] = wantAddress
                        mem[(6 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 324] = 64
                        mem[(6 * ceil32(return_data.size)) + 356] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 192
                        t = (6 * ceil32(return_data.size)) + 388
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 388 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        _2769 = mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 288 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                        _2829 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
                        mem[(7 * ceil32(return_data.size)) + 288] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                        require return_data.size >= _2769 + (32 * _2829) + 32
                        mem[(7 * ceil32(return_data.size)) + 320 len 32 * _2829] = mem[(6 * ceil32(return_data.size)) + _2769 + 320 len 32 * _2829]
                        require _2829 - 1 < _2829
                        _4749 = mem[(32 * _2829 - 1) + (7 * ceil32(return_data.size)) + 320]
                        if not mem[(32 * _2829 - 1) + (7 * ceil32(return_data.size)) + 320]:
                            _4869 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4869] = 26
                            mem[_4869 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5289 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5289] < mem[_5289]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = mem[_5289]
                        else:
                            if 9 * mem[(32 * _2829 - 1) + (7 * ceil32(return_data.size)) + 320] / mem[(32 * _2829 - 1) + (7 * ceil32(return_data.size)) + 320] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4987 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4987] = 26
                            mem[_4987 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5349 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5349] < mem[_5349]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (9 * _4749 / 10) + mem[_5349] < mem[_5349]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4749 / 10) + mem[_5349]
        else:
            mem[(4 * ceil32(return_data.size)) + 164] = 0
            mem[(4 * ceil32(return_data.size)) + 196] = address(jTokenAddress)
            require ext_code.size(sub_57cf3aeeAddress)
            staticcall sub_57cf3aeeAddress.0x30ce638 with:
                    gas gas_remaining wei
                   args 0, address(jTokenAddress)
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(jTokenAddress))
            staticcall address(jTokenAddress).0x18160ddd with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(7 * ceil32(return_data.size)) + 160] = 26
                mem[(7 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(7 * ceil32(return_data.size)) + 224] = 30
                mem[(7 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if stor21 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not block.timestamp - stor21:
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ext_call.return_data[0]
                    if stor13 == sub_8ba0eb73Address:
                        mem[(8 * ceil32(return_data.size)) + 288] = 2
                        mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                        require stor13 == sub_8ba0eb73Address
                        mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                        mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 420] = 64
                        mem[(8 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 320
                        t = (8 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _2760 = mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                        require mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415
                        _2820 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
                        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416
                        mem[(10 * ceil32(return_data.size)) + 384] = _2820
                        require return_data.size >= _2760 + (32 * _2820) + 32
                        mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2820] = mem[(8 * ceil32(return_data.size)) + _2760 + 416 len 32 * _2820]
                        require _2820 - 1 < _2820
                        _4740 = mem[(32 * _2820 - 1) + (10 * ceil32(return_data.size)) + 416]
                        if not mem[(32 * _2820 - 1) + (10 * ceil32(return_data.size)) + 416]:
                            _4860 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4860] = 26
                            mem[_4860 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5280 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5280] < mem[_5280]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = mem[_5280]
                        else:
                            if 9 * mem[(32 * _2820 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2820 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4969 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4969] = 26
                            mem[_4969 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5340 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5340] < mem[_5340]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (9 * _4740 / 10) + mem[_5340] < mem[_5340]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4740 / 10) + mem[_5340]
                    else:
                        if stor13 == wantAddress:
                            mem[(8 * ceil32(return_data.size)) + 288] = 2
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            require stor13 == wantAddress
                            mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                            mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 420] = 64
                            mem[(8 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 320
                            t = (8 * ceil32(return_data.size)) + 484
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            _2762 = mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                            require mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415
                            _2822 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
                            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
                            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416
                            mem[(10 * ceil32(return_data.size)) + 384] = _2822
                            require return_data.size >= _2762 + (32 * _2822) + 32
                            mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2822] = mem[(8 * ceil32(return_data.size)) + _2762 + 416 len 32 * _2822]
                            require _2822 - 1 < _2822
                            _4742 = mem[(32 * _2822 - 1) + (10 * ceil32(return_data.size)) + 416]
                            if not mem[(32 * _2822 - 1) + (10 * ceil32(return_data.size)) + 416]:
                                _4862 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4862] = 26
                                mem[_4862 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5282 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5282] < mem[_5282]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = mem[_5282]
                            else:
                                if 9 * mem[(32 * _2822 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2822 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4973 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4973] = 26
                                mem[_4973 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5342 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5342] < mem[_5342]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (9 * _4742 / 10) + mem[_5342] < mem[_5342]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (9 * _4742 / 10) + mem[_5342]
                        else:
                            mem[(8 * ceil32(return_data.size)) + 288] = 3
                            mem[(8 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            if stor13 == wantAddress:
                                mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2764 = mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447
                                _2824 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2824
                                require return_data.size >= _2764 + (32 * _2824) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2824] = mem[(8 * ceil32(return_data.size)) + _2764 + 448 len 32 * _2824]
                                require _2824 - 1 < _2824
                                _4744 = mem[(32 * _2824 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2824 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4864 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4864] = 26
                                    mem[_4864 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5284 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5284] < mem[_5284]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = mem[_5284]
                                else:
                                    if 9 * mem[(32 * _2824 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2824 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4977 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4977] = 26
                                    mem[_4977 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5344 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5344] < mem[_5344]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (9 * _4744 / 10) + mem[_5344] < mem[_5344]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4744 / 10) + mem[_5344]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 352] = stor13
                                mem[(8 * ceil32(return_data.size)) + 384] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2763 = mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447
                                _2823 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2823
                                require return_data.size >= _2763 + (32 * _2823) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2823] = mem[(8 * ceil32(return_data.size)) + _2763 + 448 len 32 * _2823]
                                require _2823 - 1 < _2823
                                _4743 = mem[(32 * _2823 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2823 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4863 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4863] = 26
                                    mem[_4863 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5283 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5283] < mem[_5283]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = mem[_5283]
                                else:
                                    if 9 * mem[(32 * _2823 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2823 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4975 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4975] = 26
                                    mem[_4975 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5343 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5343] < mem[_5343]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (9 * _4743 / 10) + mem[_5343] < mem[_5343]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4743 / 10) + mem[_5343]
                else:
                    if (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]) / block.timestamp - stor21 != 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ext_call.return_data[0]
                    if stor13 == sub_8ba0eb73Address:
                        mem[(8 * ceil32(return_data.size)) + 288] = 2
                        mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                        require stor13 == sub_8ba0eb73Address
                        mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                        mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 420] = 64
                        mem[(8 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 320
                        t = (8 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]), Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _2754 = mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 415
                        _2814 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384] <= test266151307()
                        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 416 <= test266151307()
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 416
                        mem[(10 * ceil32(return_data.size)) + 384] = _2814
                        require return_data.size >= _2754 + (32 * _2814) + 32
                        mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2814] = mem[(8 * ceil32(return_data.size)) + _2754 + 416 len 32 * _2814]
                        require _2814 - 1 < _2814
                        _4734 = mem[(32 * _2814 - 1) + (10 * ceil32(return_data.size)) + 416]
                        if not mem[(32 * _2814 - 1) + (10 * ceil32(return_data.size)) + 416]:
                            _4854 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4854] = 26
                            mem[_4854 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5274 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5274] < mem[_5274]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = mem[_5274]
                        else:
                            if 9 * mem[(32 * _2814 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2814 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4957 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4957] = 26
                            mem[_4957 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5334] < mem[_5334]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (9 * _4734 / 10) + mem[_5334] < mem[_5334]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4734 / 10) + mem[_5334]
                    else:
                        if stor13 == wantAddress:
                            mem[(8 * ceil32(return_data.size)) + 288] = 2
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            require stor13 == wantAddress
                            mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                            mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 420] = 64
                            mem[(8 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 320
                            t = (8 * ceil32(return_data.size)) + 484
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]), Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            _2756 = mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 415
                            _2816 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]
                            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384] <= test266151307()
                            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 416 <= test266151307()
                            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 416
                            mem[(10 * ceil32(return_data.size)) + 384] = _2816
                            require return_data.size >= _2756 + (32 * _2816) + 32
                            mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2816] = mem[(8 * ceil32(return_data.size)) + _2756 + 416 len 32 * _2816]
                            require _2816 - 1 < _2816
                            _4736 = mem[(32 * _2816 - 1) + (10 * ceil32(return_data.size)) + 416]
                            if not mem[(32 * _2816 - 1) + (10 * ceil32(return_data.size)) + 416]:
                                _4856 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4856] = 26
                                mem[_4856 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5276 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5276] < mem[_5276]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = mem[_5276]
                            else:
                                if 9 * mem[(32 * _2816 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2816 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4961 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4961] = 26
                                mem[_4961 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5336 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5336] < mem[_5336]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (9 * _4736 / 10) + mem[_5336] < mem[_5336]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (9 * _4736 / 10) + mem[_5336]
                        else:
                            mem[(8 * ceil32(return_data.size)) + 288] = 3
                            mem[(8 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            if stor13 == wantAddress:
                                mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]), Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2758 = mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 447
                                _2818 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2818
                                require return_data.size >= _2758 + (32 * _2818) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2818] = mem[(8 * ceil32(return_data.size)) + _2758 + 448 len 32 * _2818]
                                require _2818 - 1 < _2818
                                _4738 = mem[(32 * _2818 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2818 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4858 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4858] = 26
                                    mem[_4858 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5278 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5278] < mem[_5278]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = mem[_5278]
                                else:
                                    if 9 * mem[(32 * _2818 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2818 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4965 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4965] = 26
                                    mem[_4965 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5338 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5338] < mem[_5338]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (9 * _4738 / 10) + mem[_5338] < mem[_5338]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4738 / 10) + mem[_5338]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 352] = stor13
                                mem[(8 * ceil32(return_data.size)) + 384] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]), Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2757 = mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 447
                                _2817 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2817
                                require return_data.size >= _2757 + (32 * _2817) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2817] = mem[(8 * ceil32(return_data.size)) + _2757 + 448 len 32 * _2817]
                                require _2817 - 1 < _2817
                                _4737 = mem[(32 * _2817 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2817 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4857 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4857] = 26
                                    mem[_4857 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5277 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5277] < mem[_5277]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = mem[_5277]
                                else:
                                    if 9 * mem[(32 * _2817 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2817 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4963 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4963] = 26
                                    mem[_4963 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5337 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5337] < mem[_5337]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (9 * _4737 / 10) + mem[_5337] < mem[_5337]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4737 / 10) + mem[_5337]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(7 * ceil32(return_data.size)) + 160] = 26
                mem[(7 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(7 * ceil32(return_data.size)) + 224] = 30
                mem[(7 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if stor21 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not block.timestamp - stor21:
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ext_call.return_data[0]
                    if stor13 == sub_8ba0eb73Address:
                        mem[(8 * ceil32(return_data.size)) + 288] = 2
                        mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                        require stor13 == sub_8ba0eb73Address
                        mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                        mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 420] = 64
                        mem[(8 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 320
                        t = (8 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _2748 = mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                        require mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415
                        _2808 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
                        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416
                        mem[(10 * ceil32(return_data.size)) + 384] = _2808
                        require return_data.size >= _2748 + (32 * _2808) + 32
                        mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2808] = mem[(8 * ceil32(return_data.size)) + _2748 + 416 len 32 * _2808]
                        require _2808 - 1 < _2808
                        _4728 = mem[(32 * _2808 - 1) + (10 * ceil32(return_data.size)) + 416]
                        if not mem[(32 * _2808 - 1) + (10 * ceil32(return_data.size)) + 416]:
                            _4848 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4848] = 26
                            mem[_4848 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5268 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5268] < mem[_5268]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = mem[_5268]
                        else:
                            if 9 * mem[(32 * _2808 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2808 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4945] = 26
                            mem[_4945 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5328 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5328] < mem[_5328]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (9 * _4728 / 10) + mem[_5328] < mem[_5328]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4728 / 10) + mem[_5328]
                    else:
                        if stor13 == wantAddress:
                            mem[(8 * ceil32(return_data.size)) + 288] = 2
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            require stor13 == wantAddress
                            mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                            mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 420] = 64
                            mem[(8 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 320
                            t = (8 * ceil32(return_data.size)) + 484
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            _2750 = mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                            require mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415
                            _2810 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
                            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
                            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416
                            mem[(10 * ceil32(return_data.size)) + 384] = _2810
                            require return_data.size >= _2750 + (32 * _2810) + 32
                            mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2810] = mem[(8 * ceil32(return_data.size)) + _2750 + 416 len 32 * _2810]
                            require _2810 - 1 < _2810
                            _4730 = mem[(32 * _2810 - 1) + (10 * ceil32(return_data.size)) + 416]
                            if not mem[(32 * _2810 - 1) + (10 * ceil32(return_data.size)) + 416]:
                                _4850 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4850] = 26
                                mem[_4850 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5270 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5270] < mem[_5270]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = mem[_5270]
                            else:
                                if 9 * mem[(32 * _2810 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2810 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4949 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4949] = 26
                                mem[_4949 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5330 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5330] < mem[_5330]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (9 * _4730 / 10) + mem[_5330] < mem[_5330]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (9 * _4730 / 10) + mem[_5330]
                        else:
                            mem[(8 * ceil32(return_data.size)) + 288] = 3
                            mem[(8 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            if stor13 == wantAddress:
                                mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2752 = mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447
                                _2812 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2812
                                require return_data.size >= _2752 + (32 * _2812) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2812] = mem[(8 * ceil32(return_data.size)) + _2752 + 448 len 32 * _2812]
                                require _2812 - 1 < _2812
                                _4732 = mem[(32 * _2812 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2812 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4852 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4852] = 26
                                    mem[_4852 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5272 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5272] < mem[_5272]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = mem[_5272]
                                else:
                                    if 9 * mem[(32 * _2812 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2812 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4953 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4953] = 26
                                    mem[_4953 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5332 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5332] < mem[_5332]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (9 * _4732 / 10) + mem[_5332] < mem[_5332]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4732 / 10) + mem[_5332]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 352] = stor13
                                mem[(8 * ceil32(return_data.size)) + 384] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2751 = mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447
                                _2811 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2811
                                require return_data.size >= _2751 + (32 * _2811) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2811] = mem[(8 * ceil32(return_data.size)) + _2751 + 448 len 32 * _2811]
                                require _2811 - 1 < _2811
                                _4731 = mem[(32 * _2811 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2811 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4851 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4851] = 26
                                    mem[_4851 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5271 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5271] < mem[_5271]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = mem[_5271]
                                else:
                                    if 9 * mem[(32 * _2811 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2811 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4951 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4951] = 26
                                    mem[_4951 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5331 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5331] < mem[_5331]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (9 * _4731 / 10) + mem[_5331] < mem[_5331]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4731 / 10) + mem[_5331]
                else:
                    if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / block.timestamp - stor21 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ext_call.return_data[0]
                    if stor13 == sub_8ba0eb73Address:
                        mem[(8 * ceil32(return_data.size)) + 288] = 2
                        mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                        require stor13 == sub_8ba0eb73Address
                        mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                        mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 420] = 64
                        mem[(8 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 320
                        t = (8 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _2742 = mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 415
                        _2802 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384] <= test266151307()
                        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 416 <= test266151307()
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 416
                        mem[(10 * ceil32(return_data.size)) + 384] = _2802
                        require return_data.size >= _2742 + (32 * _2802) + 32
                        mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2802] = mem[(8 * ceil32(return_data.size)) + _2742 + 416 len 32 * _2802]
                        require _2802 - 1 < _2802
                        _4722 = mem[(32 * _2802 - 1) + (10 * ceil32(return_data.size)) + 416]
                        if not mem[(32 * _2802 - 1) + (10 * ceil32(return_data.size)) + 416]:
                            _4842 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4842] = 26
                            mem[_4842 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5262 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5262] < mem[_5262]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = mem[_5262]
                        else:
                            if 9 * mem[(32 * _2802 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2802 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4933 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4933] = 26
                            mem[_4933 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5322 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_5322] < mem[_5322]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (9 * _4722 / 10) + mem[_5322] < mem[_5322]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4722 / 10) + mem[_5322]
                    else:
                        if stor13 == wantAddress:
                            mem[(8 * ceil32(return_data.size)) + 288] = 2
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            require stor13 == wantAddress
                            mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                            mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 420] = 64
                            mem[(8 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 320
                            t = (8 * ceil32(return_data.size)) + 484
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            _2744 = mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 415
                            _2804 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]
                            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384] <= test266151307()
                            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 416 <= test266151307()
                            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 416
                            mem[(10 * ceil32(return_data.size)) + 384] = _2804
                            require return_data.size >= _2744 + (32 * _2804) + 32
                            mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2804] = mem[(8 * ceil32(return_data.size)) + _2744 + 416 len 32 * _2804]
                            require _2804 - 1 < _2804
                            _4724 = mem[(32 * _2804 - 1) + (10 * ceil32(return_data.size)) + 416]
                            if not mem[(32 * _2804 - 1) + (10 * ceil32(return_data.size)) + 416]:
                                _4844 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4844] = 26
                                mem[_4844 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5264 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5264] < mem[_5264]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = mem[_5264]
                            else:
                                if 9 * mem[(32 * _2804 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2804 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4937 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4937] = 26
                                mem[_4937 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5324 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_5324] < mem[_5324]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (9 * _4724 / 10) + mem[_5324] < mem[_5324]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (9 * _4724 / 10) + mem[_5324]
                        else:
                            mem[(8 * ceil32(return_data.size)) + 288] = 3
                            mem[(8 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            if stor13 == wantAddress:
                                mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2746 = mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 447
                                _2806 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2806
                                require return_data.size >= _2746 + (32 * _2806) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2806] = mem[(8 * ceil32(return_data.size)) + _2746 + 448 len 32 * _2806]
                                require _2806 - 1 < _2806
                                _4726 = mem[(32 * _2806 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2806 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4846 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4846] = 26
                                    mem[_4846 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5266 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5266] < mem[_5266]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = mem[_5266]
                                else:
                                    if 9 * mem[(32 * _2806 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2806 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4941 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4941] = 26
                                    mem[_4941 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5326 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5326] < mem[_5326]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (9 * _4726 / 10) + mem[_5326] < mem[_5326]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4726 / 10) + mem[_5326]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 352] = stor13
                                mem[(8 * ceil32(return_data.size)) + 384] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2745 = mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 447
                                _2805 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2805
                                require return_data.size >= _2745 + (32 * _2805) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2805] = mem[(8 * ceil32(return_data.size)) + _2745 + 448 len 32 * _2805]
                                require _2805 - 1 < _2805
                                _4725 = mem[(32 * _2805 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2805 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4845 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4845] = 26
                                    mem[_4845 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5265 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5265] < mem[_5265]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = mem[_5265]
                                else:
                                    if 9 * mem[(32 * _2805 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2805 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4939 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4939] = 26
                                    mem[_4939 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5325 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_5325] < mem[_5325]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (9 * _4725 / 10) + mem[_5325] < mem[_5325]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4725 / 10) + mem[_5325]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(address(jTokenAddress))
        staticcall address(jTokenAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 164] = this.address
            require ext_code.size(sub_8ba0eb73Address)
            staticcall sub_8ba0eb73Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
            if stor13 == sub_8ba0eb73Address:
                mem[(6 * ceil32(return_data.size)) + 160] = 2
                mem[(6 * ceil32(return_data.size)) + 192] = sub_8ba0eb73Address
                require stor13 == sub_8ba0eb73Address
                mem[(6 * ceil32(return_data.size)) + 224] = wantAddress
                mem[(6 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 292] = 64
                mem[(6 * ceil32(return_data.size)) + 324] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 192
                t = (6 * ceil32(return_data.size)) + 356
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor11)
                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 356 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                _2736 = mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
                require mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (6 * ceil32(return_data.size)) + return_data.size + 256 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
                _2796 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
                mem[(7 * ceil32(return_data.size)) + 256] = _2796
                require return_data.size >= _2736 + (32 * _2796) + 32
                mem[(7 * ceil32(return_data.size)) + 288 len 32 * _2796] = mem[(6 * ceil32(return_data.size)) + _2736 + 288 len 32 * _2796]
                require _2796 - 1 < _2796
                _4716 = mem[(32 * _2796 - 1) + (7 * ceil32(return_data.size)) + 288]
                if not mem[(32 * _2796 - 1) + (7 * ceil32(return_data.size)) + 288]:
                    _4836 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4836] = 26
                    mem[_4836 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5256 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5256] < mem[_5256]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5256]
                else:
                    if 9 * mem[(32 * _2796 - 1) + (7 * ceil32(return_data.size)) + 288] / mem[(32 * _2796 - 1) + (7 * ceil32(return_data.size)) + 288] != 9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4921 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4921] = 26
                    mem[_4921 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5316] < mem[_5316]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 9 * _4716 / 10 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64]] = (9 * _4716 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5316]
            else:
                if stor13 == wantAddress:
                    mem[(6 * ceil32(return_data.size)) + 160] = 2
                    mem[(6 * ceil32(return_data.size)) + 192] = sub_8ba0eb73Address
                    require stor13 == wantAddress
                    mem[(6 * ceil32(return_data.size)) + 224] = wantAddress
                    mem[(6 * ceil32(return_data.size)) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 292] = 64
                    mem[(6 * ceil32(return_data.size)) + 324] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 192
                    t = (6 * ceil32(return_data.size)) + 356
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 356 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 256
                    require return_data.size >= 32
                    _2738 = mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28]
                    require mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 256 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 287
                    _2798 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288 <= test266151307()
                    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 256 len 4], ext_call.return_data[0 len 28] + 256]) + 288
                    mem[(7 * ceil32(return_data.size)) + 256] = _2798
                    require return_data.size >= _2738 + (32 * _2798) + 32
                    mem[(7 * ceil32(return_data.size)) + 288 len 32 * _2798] = mem[(6 * ceil32(return_data.size)) + _2738 + 288 len 32 * _2798]
                    require _2798 - 1 < _2798
                    _4718 = mem[(32 * _2798 - 1) + (7 * ceil32(return_data.size)) + 288]
                    if not mem[(32 * _2798 - 1) + (7 * ceil32(return_data.size)) + 288]:
                        _4838 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4838] = 26
                        mem[_4838 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5258 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5258] < mem[_5258]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5258]
                    else:
                        if 9 * mem[(32 * _2798 - 1) + (7 * ceil32(return_data.size)) + 288] / mem[(32 * _2798 - 1) + (7 * ceil32(return_data.size)) + 288] != 9:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _4925 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4925] = 26
                        mem[_4925 + 32] = 'SafeMath: division by zero'
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5318 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5318] < mem[_5318]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 9 * _4718 / 10 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64]] = (9 * _4718 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5318]
                else:
                    mem[(6 * ceil32(return_data.size)) + 160] = 3
                    mem[(6 * ceil32(return_data.size)) + 192 len 96] = call.data[calldata.size len 96]
                    mem[(6 * ceil32(return_data.size)) + 192] = sub_8ba0eb73Address
                    if stor13 == wantAddress:
                        mem[(6 * ceil32(return_data.size)) + 224] = wantAddress
                        mem[(6 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 324] = 64
                        mem[(6 * ceil32(return_data.size)) + 356] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 192
                        t = (6 * ceil32(return_data.size)) + 388
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 388 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        _2740 = mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 288 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                        _2800 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
                        mem[(7 * ceil32(return_data.size)) + 288] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                        require return_data.size >= _2740 + (32 * _2800) + 32
                        mem[(7 * ceil32(return_data.size)) + 320 len 32 * _2800] = mem[(6 * ceil32(return_data.size)) + _2740 + 320 len 32 * _2800]
                        require _2800 - 1 < _2800
                        _4720 = mem[(32 * _2800 - 1) + (7 * ceil32(return_data.size)) + 320]
                        if not mem[(32 * _2800 - 1) + (7 * ceil32(return_data.size)) + 320]:
                            _4840 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4840] = 26
                            mem[_4840 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5260 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5260] < mem[_5260]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5260]
                        else:
                            if 9 * mem[(32 * _2800 - 1) + (7 * ceil32(return_data.size)) + 320] / mem[(32 * _2800 - 1) + (7 * ceil32(return_data.size)) + 320] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4929 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4929] = 26
                            mem[_4929 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5320 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5320] < mem[_5320]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 9 * _4720 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4720 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5320]
                    else:
                        mem[(6 * ceil32(return_data.size)) + 224] = stor13
                        mem[(6 * ceil32(return_data.size)) + 256] = wantAddress
                        mem[(6 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 324] = 64
                        mem[(6 * ceil32(return_data.size)) + 356] = 3
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 192
                        t = (6 * ceil32(return_data.size)) + 388
                        while idx < 3:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=3, data=mem[(6 * ceil32(return_data.size)) + 388 len 96])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        _2739 = mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
                        require mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (6 * ceil32(return_data.size)) + return_data.size + 288 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                        _2799 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                        require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                        require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                        mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320
                        mem[(7 * ceil32(return_data.size)) + 288] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
                        require return_data.size >= _2739 + (32 * _2799) + 32
                        mem[(7 * ceil32(return_data.size)) + 320 len 32 * _2799] = mem[(6 * ceil32(return_data.size)) + _2739 + 320 len 32 * _2799]
                        require _2799 - 1 < _2799
                        _4719 = mem[(32 * _2799 - 1) + (7 * ceil32(return_data.size)) + 320]
                        if not mem[(32 * _2799 - 1) + (7 * ceil32(return_data.size)) + 320]:
                            _4839 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4839] = 26
                            mem[_4839 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5259 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5259] < mem[_5259]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5259]
                        else:
                            if 9 * mem[(32 * _2799 - 1) + (7 * ceil32(return_data.size)) + 320] / mem[(32 * _2799 - 1) + (7 * ceil32(return_data.size)) + 320] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4927 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4927] = 26
                            mem[_4927 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5319 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5319] < mem[_5319]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 9 * _4719 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4719 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5319]
        else:
            mem[(4 * ceil32(return_data.size)) + 164] = 0
            mem[(4 * ceil32(return_data.size)) + 196] = address(jTokenAddress)
            require ext_code.size(sub_57cf3aeeAddress)
            staticcall sub_57cf3aeeAddress.0x30ce638 with:
                    gas gas_remaining wei
                   args 0, address(jTokenAddress)
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(jTokenAddress))
            staticcall address(jTokenAddress).0x18160ddd with:
                    gas gas_remaining wei
            mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(7 * ceil32(return_data.size)) + 160] = 26
                mem[(7 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(7 * ceil32(return_data.size)) + 224] = 30
                mem[(7 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if stor21 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not block.timestamp - stor21:
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                    if stor13 == sub_8ba0eb73Address:
                        mem[(8 * ceil32(return_data.size)) + 288] = 2
                        mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                        require stor13 == sub_8ba0eb73Address
                        mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                        mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 420] = 64
                        mem[(8 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 320
                        t = (8 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _2730 = mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                        require mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415
                        _2790 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
                        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416
                        mem[(10 * ceil32(return_data.size)) + 384] = _2790
                        require return_data.size >= _2730 + (32 * _2790) + 32
                        mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2790] = mem[(8 * ceil32(return_data.size)) + _2730 + 416 len 32 * _2790]
                        require _2790 - 1 < _2790
                        _4710 = mem[(32 * _2790 - 1) + (10 * ceil32(return_data.size)) + 416]
                        if not mem[(32 * _2790 - 1) + (10 * ceil32(return_data.size)) + 416]:
                            _4830 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4830] = 26
                            mem[_4830 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5250 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5250] < mem[_5250]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5250]
                        else:
                            if 9 * mem[(32 * _2790 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2790 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4909 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4909] = 26
                            mem[_4909 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5310] < mem[_5310]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 9 * _4710 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4710 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5310]
                    else:
                        if stor13 == wantAddress:
                            mem[(8 * ceil32(return_data.size)) + 288] = 2
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            require stor13 == wantAddress
                            mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                            mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 420] = 64
                            mem[(8 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 320
                            t = (8 * ceil32(return_data.size)) + 484
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            _2732 = mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                            require mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415
                            _2792 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
                            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
                            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416
                            mem[(10 * ceil32(return_data.size)) + 384] = _2792
                            require return_data.size >= _2732 + (32 * _2792) + 32
                            mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2792] = mem[(8 * ceil32(return_data.size)) + _2732 + 416 len 32 * _2792]
                            require _2792 - 1 < _2792
                            _4712 = mem[(32 * _2792 - 1) + (10 * ceil32(return_data.size)) + 416]
                            if not mem[(32 * _2792 - 1) + (10 * ceil32(return_data.size)) + 416]:
                                _4832 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4832] = 26
                                mem[_4832 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5252 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5252] < mem[_5252]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5252]
                            else:
                                if 9 * mem[(32 * _2792 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2792 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4913 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4913] = 26
                                mem[_4913 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5312 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5312] < mem[_5312]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 9 * _4712 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (9 * _4712 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5312]
                        else:
                            mem[(8 * ceil32(return_data.size)) + 288] = 3
                            mem[(8 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            if stor13 == wantAddress:
                                mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2734 = mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447
                                _2794 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2794
                                require return_data.size >= _2734 + (32 * _2794) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2794] = mem[(8 * ceil32(return_data.size)) + _2734 + 448 len 32 * _2794]
                                require _2794 - 1 < _2794
                                _4714 = mem[(32 * _2794 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2794 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4834 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4834] = 26
                                    mem[_4834 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5254 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5254] < mem[_5254]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5254]
                                else:
                                    if 9 * mem[(32 * _2794 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2794 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4917 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4917] = 26
                                    mem[_4917 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5314 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5314] < mem[_5314]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 9 * _4714 / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4714 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5314]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 352] = stor13
                                mem[(8 * ceil32(return_data.size)) + 384] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2733 = mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447
                                _2793 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2793
                                require return_data.size >= _2733 + (32 * _2793) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2793] = mem[(8 * ceil32(return_data.size)) + _2733 + 448 len 32 * _2793]
                                require _2793 - 1 < _2793
                                _4713 = mem[(32 * _2793 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2793 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4833 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4833] = 26
                                    mem[_4833 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5253 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5253] < mem[_5253]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5253]
                                else:
                                    if 9 * mem[(32 * _2793 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2793 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4915 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4915] = 26
                                    mem[_4915 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5313 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5313] < mem[_5313]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 9 * _4713 / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4713 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5313]
                else:
                    if (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]) / block.timestamp - stor21 != 0 / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                    if stor13 == sub_8ba0eb73Address:
                        mem[(8 * ceil32(return_data.size)) + 288] = 2
                        mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                        require stor13 == sub_8ba0eb73Address
                        mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                        mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 420] = 64
                        mem[(8 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 320
                        t = (8 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]), Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _2724 = mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 415
                        _2784 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384] <= test266151307()
                        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 416 <= test266151307()
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 416
                        mem[(10 * ceil32(return_data.size)) + 384] = _2784
                        require return_data.size >= _2724 + (32 * _2784) + 32
                        mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2784] = mem[(8 * ceil32(return_data.size)) + _2724 + 416 len 32 * _2784]
                        require _2784 - 1 < _2784
                        _4704 = mem[(32 * _2784 - 1) + (10 * ceil32(return_data.size)) + 416]
                        if not mem[(32 * _2784 - 1) + (10 * ceil32(return_data.size)) + 416]:
                            _4824 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4824] = 26
                            mem[_4824 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5244 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5244] < mem[_5244]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5244]
                        else:
                            if 9 * mem[(32 * _2784 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2784 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4897 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4897] = 26
                            mem[_4897 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5304 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5304] < mem[_5304]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 9 * _4704 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4704 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5304]
                    else:
                        if stor13 == wantAddress:
                            mem[(8 * ceil32(return_data.size)) + 288] = 2
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            require stor13 == wantAddress
                            mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                            mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 420] = 64
                            mem[(8 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 320
                            t = (8 * ceil32(return_data.size)) + 484
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]), Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            _2726 = mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 415
                            _2786 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]
                            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384] <= test266151307()
                            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 416 <= test266151307()
                            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 384]) + 416
                            mem[(10 * ceil32(return_data.size)) + 384] = _2786
                            require return_data.size >= _2726 + (32 * _2786) + 32
                            mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2786] = mem[(8 * ceil32(return_data.size)) + _2726 + 416 len 32 * _2786]
                            require _2786 - 1 < _2786
                            _4706 = mem[(32 * _2786 - 1) + (10 * ceil32(return_data.size)) + 416]
                            if not mem[(32 * _2786 - 1) + (10 * ceil32(return_data.size)) + 416]:
                                _4826 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4826] = 26
                                mem[_4826 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5246 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5246] < mem[_5246]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5246]
                            else:
                                if 9 * mem[(32 * _2786 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2786 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4901 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4901] = 26
                                mem[_4901 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5306 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5306] < mem[_5306]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 9 * _4706 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (9 * _4706 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5306]
                        else:
                            mem[(8 * ceil32(return_data.size)) + 288] = 3
                            mem[(8 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            if stor13 == wantAddress:
                                mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]), Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2728 = mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 447
                                _2788 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2788
                                require return_data.size >= _2728 + (32 * _2788) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2788] = mem[(8 * ceil32(return_data.size)) + _2728 + 448 len 32 * _2788]
                                require _2788 - 1 < _2788
                                _4708 = mem[(32 * _2788 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2788 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4828 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4828] = 26
                                    mem[_4828 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5248 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5248] < mem[_5248]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5248]
                                else:
                                    if 9 * mem[(32 * _2788 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2788 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4905 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4905] = 26
                                    mem[_4905 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5308 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5308] < mem[_5308]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 9 * _4708 / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4708 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5308]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 352] = stor13
                                mem[(8 * ceil32(return_data.size)) + 384] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0]), Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2727 = mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 447
                                _2787 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * 0 / ext_call.return_data[0]) - (stor21 * 0 / ext_call.return_data[0])) >> 32 + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2787
                                require return_data.size >= _2727 + (32 * _2787) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2787] = mem[(8 * ceil32(return_data.size)) + _2727 + 448 len 32 * _2787]
                                require _2787 - 1 < _2787
                                _4707 = mem[(32 * _2787 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2787 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4827 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4827] = 26
                                    mem[_4827 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5247 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5247] < mem[_5247]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5247]
                                else:
                                    if 9 * mem[(32 * _2787 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2787 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4903 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4903] = 26
                                    mem[_4903 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5307 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5307] < mem[_5307]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 9 * _4707 / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4707 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5307]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(7 * ceil32(return_data.size)) + 160] = 26
                mem[(7 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                mem[(7 * ceil32(return_data.size)) + 224] = 30
                mem[(7 * ceil32(return_data.size)) + 256] = 'SafeMath: subtraction overflow'
                if stor21 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not block.timestamp - stor21:
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                    if stor13 == sub_8ba0eb73Address:
                        mem[(8 * ceil32(return_data.size)) + 288] = 2
                        mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                        require stor13 == sub_8ba0eb73Address
                        mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                        mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 420] = 64
                        mem[(8 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 320
                        t = (8 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _2718 = mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                        require mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415
                        _2778 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
                        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416
                        mem[(10 * ceil32(return_data.size)) + 384] = _2778
                        require return_data.size >= _2718 + (32 * _2778) + 32
                        mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2778] = mem[(8 * ceil32(return_data.size)) + _2718 + 416 len 32 * _2778]
                        require _2778 - 1 < _2778
                        _4698 = mem[(32 * _2778 - 1) + (10 * ceil32(return_data.size)) + 416]
                        if not mem[(32 * _2778 - 1) + (10 * ceil32(return_data.size)) + 416]:
                            _4818 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4818] = 26
                            mem[_4818 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5238 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5238] < mem[_5238]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5238]
                        else:
                            if 9 * mem[(32 * _2778 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2778 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4885 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4885] = 26
                            mem[_4885 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5298 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5298] < mem[_5298]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 9 * _4698 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4698 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5298]
                    else:
                        if stor13 == wantAddress:
                            mem[(8 * ceil32(return_data.size)) + 288] = 2
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            require stor13 == wantAddress
                            mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                            mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 420] = 64
                            mem[(8 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 320
                            t = (8 * ceil32(return_data.size)) + 484
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            _2720 = mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28]
                            require mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 415
                            _2780 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]
                            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384] <= test266151307()
                            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416 <= test266151307()
                            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], ext_call.return_data[0 len 28] + 384]) + 416
                            mem[(10 * ceil32(return_data.size)) + 384] = _2780
                            require return_data.size >= _2720 + (32 * _2780) + 32
                            mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2780] = mem[(8 * ceil32(return_data.size)) + _2720 + 416 len 32 * _2780]
                            require _2780 - 1 < _2780
                            _4700 = mem[(32 * _2780 - 1) + (10 * ceil32(return_data.size)) + 416]
                            if not mem[(32 * _2780 - 1) + (10 * ceil32(return_data.size)) + 416]:
                                _4820 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4820] = 26
                                mem[_4820 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5240 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5240] < mem[_5240]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5240]
                            else:
                                if 9 * mem[(32 * _2780 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2780 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4889 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4889] = 26
                                mem[_4889 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5300 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5300] < mem[_5300]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 9 * _4700 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (9 * _4700 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5300]
                        else:
                            mem[(8 * ceil32(return_data.size)) + 288] = 3
                            mem[(8 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            if stor13 == wantAddress:
                                mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2722 = mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447
                                _2782 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2782
                                require return_data.size >= _2722 + (32 * _2782) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2782] = mem[(8 * ceil32(return_data.size)) + _2722 + 448 len 32 * _2782]
                                require _2782 - 1 < _2782
                                _4702 = mem[(32 * _2782 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2782 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4822 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4822] = 26
                                    mem[_4822 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5242 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5242] < mem[_5242]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5242]
                                else:
                                    if 9 * mem[(32 * _2782 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2782 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4893 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4893] = 26
                                    mem[_4893 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5302 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5302] < mem[_5302]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 9 * _4702 / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4702 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5302]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 352] = stor13
                                mem[(8 * ceil32(return_data.size)) + 384] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0], Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2721 = mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447
                                _2781 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2781
                                require return_data.size >= _2721 + (32 * _2781) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2781] = mem[(8 * ceil32(return_data.size)) + _2721 + 448 len 32 * _2781]
                                require _2781 - 1 < _2781
                                _4701 = mem[(32 * _2781 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2781 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4821 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4821] = 26
                                    mem[_4821 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5241 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5241] < mem[_5241]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5241]
                                else:
                                    if 9 * mem[(32 * _2781 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2781 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4891 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4891] = 26
                                    mem[_4891 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5301 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5301] < mem[_5301]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 9 * _4701 / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4701 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5301]
                else:
                    if (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / block.timestamp - stor21 != ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(7 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(sub_8ba0eb73Address)
                    staticcall sub_8ba0eb73Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
                    if stor13 == sub_8ba0eb73Address:
                        mem[(8 * ceil32(return_data.size)) + 288] = 2
                        mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                        require stor13 == sub_8ba0eb73Address
                        mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                        mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        mem[(8 * ceil32(return_data.size)) + 420] = 64
                        mem[(8 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = (8 * ceil32(return_data.size)) + 320
                        t = (8 * ceil32(return_data.size)) + 484
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor11)
                        staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 384
                        require return_data.size >= 32
                        _2712 = mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                        require mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 <= test266151307()
                        require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 415
                        _2772 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]
                        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384] <= test266151307()
                        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 416 <= test266151307()
                        mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 416
                        mem[(10 * ceil32(return_data.size)) + 384] = _2772
                        require return_data.size >= _2712 + (32 * _2772) + 32
                        mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2772] = mem[(8 * ceil32(return_data.size)) + _2712 + 416 len 32 * _2772]
                        require _2772 - 1 < _2772
                        _4692 = mem[(32 * _2772 - 1) + (10 * ceil32(return_data.size)) + 416]
                        if not mem[(32 * _2772 - 1) + (10 * ceil32(return_data.size)) + 416]:
                            _4812 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4812] = 26
                            mem[_4812 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5232 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5232] < mem[_5232]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5232]
                        else:
                            if 9 * mem[(32 * _2772 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2772 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4873 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4873] = 26
                            mem[_4873 + 32] = 'SafeMath: division by zero'
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5292 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5292] < mem[_5292]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 9 * _4692 / 10 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[mem[64]] = (9 * _4692 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5292]
                    else:
                        if stor13 == wantAddress:
                            mem[(8 * ceil32(return_data.size)) + 288] = 2
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            require stor13 == wantAddress
                            mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                            mem[(8 * ceil32(return_data.size)) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                            mem[(8 * ceil32(return_data.size)) + 420] = 64
                            mem[(8 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (8 * ceil32(return_data.size)) + 320
                            t = (8 * ceil32(return_data.size)) + 484
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor11)
                            staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                    gas gas_remaining wei
                                   args ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 484 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 384
                            require return_data.size >= 32
                            _2714 = mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                            require mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 <= test266151307()
                            require (8 * ceil32(return_data.size)) + return_data.size + 384 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 415
                            _2774 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]
                            require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384] <= test266151307()
                            require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 416 <= test266151307()
                            mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 384]) + 416
                            mem[(10 * ceil32(return_data.size)) + 384] = _2774
                            require return_data.size >= _2714 + (32 * _2774) + 32
                            mem[(10 * ceil32(return_data.size)) + 416 len 32 * _2774] = mem[(8 * ceil32(return_data.size)) + _2714 + 416 len 32 * _2774]
                            require _2774 - 1 < _2774
                            _4694 = mem[(32 * _2774 - 1) + (10 * ceil32(return_data.size)) + 416]
                            if not mem[(32 * _2774 - 1) + (10 * ceil32(return_data.size)) + 416]:
                                _4814 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4814] = 26
                                mem[_4814 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5234 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5234] < mem[_5234]:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5234]
                            else:
                                if 9 * mem[(32 * _2774 - 1) + (10 * ceil32(return_data.size)) + 416] / mem[(32 * _2774 - 1) + (10 * ceil32(return_data.size)) + 416] != 9:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _4877 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4877] = 26
                                mem[_4877 + 32] = 'SafeMath: division by zero'
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(wantAddress)
                                staticcall wantAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5294 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5294] < mem[_5294]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 9 * _4694 / 10 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[mem[64]] = (9 * _4694 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5294]
                        else:
                            mem[(8 * ceil32(return_data.size)) + 288] = 3
                            mem[(8 * ceil32(return_data.size)) + 320 len 96] = call.data[calldata.size len 96]
                            mem[(8 * ceil32(return_data.size)) + 320] = sub_8ba0eb73Address
                            if stor13 == wantAddress:
                                mem[(8 * ceil32(return_data.size)) + 352] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2716 = mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 447
                                _2776 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2776
                                require return_data.size >= _2716 + (32 * _2776) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2776] = mem[(8 * ceil32(return_data.size)) + _2716 + 448 len 32 * _2776]
                                require _2776 - 1 < _2776
                                _4696 = mem[(32 * _2776 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2776 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4816 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4816] = 26
                                    mem[_4816 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5236 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5236] < mem[_5236]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5236]
                                else:
                                    if 9 * mem[(32 * _2776 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2776 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4881 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4881] = 26
                                    mem[_4881 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5296 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5296] < mem[_5296]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 9 * _4696 / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4696 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5296]
                            else:
                                mem[(8 * ceil32(return_data.size)) + 352] = stor13
                                mem[(8 * ceil32(return_data.size)) + 384] = wantAddress
                                mem[(8 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[(8 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                mem[(8 * ceil32(return_data.size)) + 452] = 64
                                mem[(8 * ceil32(return_data.size)) + 484] = 3
                                idx = 0
                                s = (8 * ceil32(return_data.size)) + 320
                                t = (8 * ceil32(return_data.size)) + 516
                                while idx < 3:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor11)
                                staticcall stor11.getAmountsOut(uint256 arg1, address[] arg2) with:
                                        gas gas_remaining wei
                                       args ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), Array(len=3, data=mem[(8 * ceil32(return_data.size)) + 516 len 96])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(8 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (10 * ceil32(return_data.size)) + 416
                                require return_data.size >= 32
                                _2715 = mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32
                                require mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 <= test266151307()
                                require (8 * ceil32(return_data.size)) + return_data.size + 416 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 447
                                _2775 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]
                                require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416] <= test266151307()
                                require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 448 <= test266151307()
                                mem[64] = (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0] + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) - (stor21 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) >> 32 + 416]) + 448
                                mem[(10 * ceil32(return_data.size)) + 416] = _2775
                                require return_data.size >= _2715 + (32 * _2775) + 32
                                mem[(10 * ceil32(return_data.size)) + 448 len 32 * _2775] = mem[(8 * ceil32(return_data.size)) + _2715 + 448 len 32 * _2775]
                                require _2775 - 1 < _2775
                                _4695 = mem[(32 * _2775 - 1) + (10 * ceil32(return_data.size)) + 448]
                                if not mem[(32 * _2775 - 1) + (10 * ceil32(return_data.size)) + 448]:
                                    _4815 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4815] = 26
                                    mem[_4815 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5235 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5235] < mem[_5235]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5235]
                                else:
                                    if 9 * mem[(32 * _2775 - 1) + (10 * ceil32(return_data.size)) + 448] / mem[(32 * _2775 - 1) + (10 * ceil32(return_data.size)) + 448] != 9:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4879 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4879] = 26
                                    mem[_4879 + 32] = 'SafeMath: division by zero'
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(wantAddress)
                                    staticcall wantAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5295 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5295] < mem[_5295]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 9 * _4695 / 10 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = (9 * _4695 / 10) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + mem[_5295]
    return memory
      from mem[64]
       len 32
}



}
