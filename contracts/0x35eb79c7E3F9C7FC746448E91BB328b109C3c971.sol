contract main {




// =====================  Runtime code  =====================


address owner;
address investTokenAddress;
address launchTokenAddress;
address treasuryAddress;
address sub_e545338cAddress;
uint256 price;
uint256 sub_bc5c619a;
uint256 initialCap;
uint256 maxCap;
uint256 sub_b5224c44;
uint256 sub_8a5396a3;
uint256 sub_a4197afc;
uint256 sub_22e27403;
uint256 startTime;
uint256 duration;
uint256 epochTime;
uint256 endTime;
uint8 saleEnabled;
uint8 sub_d2f82536; offset 8
uint256 sub_bc284c5c;
uint256 sub_0b1258a0;
uint256 numWhitelisted;
uint256 sub_861d8e13;
mapping of uint8 stor22;
mapping of struct sub_f703f36f;

function sub_0b1258a0(?) payable {
    return sub_0b1258a0
}

function duration() payable {
    return duration
}

function sub_22e27403(?) payable {
    return sub_22e27403
}

function maxCap() payable {
    return maxCap
}

function endTime() payable {
    return endTime
}

function epochTime() payable {
    return epochTime
}

function numWhitelisted() payable {
    return numWhitelisted
}

function treasury() payable {
    return treasuryAddress
}

function saleEnabled() payable {
    return bool(saleEnabled)
}

function startTime() payable {
    return startTime
}

function sub_861d8e13(?) payable {
    return sub_861d8e13
}

function sub_8a5396a3(?) payable {
    return sub_8a5396a3
}

function owner() payable {
    return owner
}

function price() payable {
    return price
}

function launchToken() payable {
    return launchTokenAddress
}

function sub_a4197afc(?) payable {
    return sub_a4197afc
}

function sub_b5224c44(?) payable {
    return sub_b5224c44
}

function initialCap() payable {
    return initialCap
}

function investToken() payable {
    return investTokenAddress
}

function sub_bc284c5c(?) payable {
    return sub_bc284c5c
}

function sub_bc5c619a(?) payable {
    return sub_bc5c619a
}

function sub_d2f82536(?) payable {
    return bool(sub_d2f82536)
}

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor22[arg1])
}

function sub_e545338c(?) payable {
    return sub_e545338cAddress
}

function sub_f703f36f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f703f36f[arg1].field_0, bool(sub_f703f36f[arg1].field_256), sub_f703f36f[arg1].field_512
}

function _fallback() payable {
    revert
}

function enableSale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleEnabled = 1
    emit 0x20b56eb5: 1, block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function currentEpoch() payable {
    if block.timestamp < startTime:
        revert with 0, 17
    if not epochTime:
        revert with 0, 18
    return (block.timestamp - startTime / epochTime)
}

function removeWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = 0
}

function sub_604a85da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    launchTokenAddress = address(arg1)
}

function sub_bdbcd725(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f703f36f[address(arg1)].field_512 = arg2
}

function enableRedeem() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not launchTokenAddress:
        revert with 0, 'launch token not set'
    sub_d2f82536 = 1
    emit 0xef5fd91d: 1, block.timestamp
}

function addWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22[address(arg1)] = 1
    if numWhitelisted > -2:
        revert with 0, 17
    numWhitelisted++
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ff16e750(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(launchTokenAddress)
    call launchTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function sub_f9fd3ba2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(launchTokenAddress)
    call launchTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function withdrawTreasury(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args treasuryAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
}

function currentCap() payable {
    if block.timestamp < startTime:
        revert with 0, 17
    if not epochTime:
        revert with 0, 18
    if not block.timestamp - startTime / epochTime:
        if initialCap and 1 > -1 / initialCap:
            revert with 0, 17
        if initialCap <= maxCap:
            return initialCap
    else:
        if block.timestamp - startTime / epochTime > 255:
            revert with 0, 17
        if initialCap and 1 << block.timestamp - startTime / epochTime > -1 / initialCap:
            revert with 0, 17
        if initialCap * 1 << block.timestamp - startTime / epochTime <= maxCap:
            return (initialCap * 1 << block.timestamp - startTime / epochTime)
    return maxCap
}

function sub_72941316(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > 1000:
        revert with 0, 'too many addresses'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 22
        stor22[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if numWhitelisted > -2:
            revert with 0, 17
        numWhitelisted++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function redeem() payable {
    if not sub_d2f82536:
        revert with 0, 'redeem not enabled'
    require ext_code.size(sub_e545338cAddress)
    staticcall sub_e545338cAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no amount issued'
    if sub_f703f36f[msg.sender].field_256:
        revert with 0, 'already claimed'
    require ext_code.size(launchTokenAddress)
    call launchTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    require ext_code.size(sub_e545338cAddress)
    call sub_e545338cAddress.redeem(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_22e27403 > !ext_call.return_data[0]:
        revert with 0, 17
    sub_22e27403 += ext_call.return_data[0]
    emit Redeem(msg.sender, ext_call.return_data[0]);
    sub_f703f36f[msg.sender].field_256 = 1
}

function invest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < startTime:
        revert with 0, 'not started yet'
    if not saleEnabled:
        revert with 0, 'not enabled yet'
    if bool(stor22[msg.sender]) != 1:
        revert with 0, 'msg.sender is not whitelisted'
    if sub_8a5396a3 > !arg1:
        revert with 0, 17
    if sub_8a5396a3 + arg1 > sub_b5224c44:
        revert with 0, 'over total raise'
    if arg1 < sub_bc284c5c:
        revert with 0, 'below minimum invest'
    if block.timestamp < startTime:
        revert with 0, 17
    if not epochTime:
        revert with 0, 18
    if not block.timestamp - startTime / epochTime:
        if initialCap and 1 > -1 / initialCap:
            revert with 0, 17
        if sub_f703f36f[msg.sender].field_0 > !arg1:
            revert with 0, 17
        if initialCap <= maxCap:
            if sub_f703f36f[msg.sender].field_0 + arg1 > initialCap:
                revert with 0, 'above cap'
        else:
            if sub_f703f36f[msg.sender].field_0 + arg1 > maxCap:
                revert with 0, 'above cap'
    else:
        if block.timestamp - startTime / epochTime > 255:
            revert with 0, 17
        if initialCap and 1 << block.timestamp - startTime / epochTime > -1 / initialCap:
            revert with 0, 17
        if sub_f703f36f[msg.sender].field_0 > !arg1:
            revert with 0, 17
        if initialCap * 1 << block.timestamp - startTime / epochTime <= maxCap:
            if sub_f703f36f[msg.sender].field_0 + arg1 > initialCap * 1 << block.timestamp - startTime / epochTime:
                revert with 0, 'above cap'
        else:
            if sub_f703f36f[msg.sender].field_0 + arg1 > maxCap:
                revert with 0, 'above cap'
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    if 1 == sub_f703f36f[msg.sender].field_512:
        if not sub_0b1258a0:
            if arg1 and sub_bc5c619a > -1 / arg1:
                revert with 0, 17
            require ext_code.size(sub_e545338cAddress)
            call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 * sub_bc5c619a / 475
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_8a5396a3 > !arg1:
                revert with 0, 17
            sub_8a5396a3 += arg1
            if sub_a4197afc > !(arg1 * sub_bc5c619a / 475):
                revert with 0, 17
            sub_a4197afc += arg1 * sub_bc5c619a / 475
        else:
            if bool(bool(sub_0b1258a0 < 78)) or bool(bool(sub_0b1258a0 < 32)):
                if 10^sub_0b1258a0 > 0x89f87469a23920e033bd2ba79cd56c541366f05edad0089f87469a23920e03:
                    revert with 0, 17
                if arg1 and sub_bc5c619a > -1 / arg1:
                    revert with 0, 17
                if not 475 * 10^sub_0b1258a0:
                    revert with 0, 18
                require ext_code.size(sub_e545338cAddress)
                call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_bc5c619a / 475 * 10^sub_0b1258a0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8a5396a3 > !arg1:
                    revert with 0, 17
                sub_8a5396a3 += arg1
                if sub_a4197afc > !(arg1 * sub_bc5c619a / 475 * 10^sub_0b1258a0):
                    revert with 0, 17
                sub_a4197afc += arg1 * sub_bc5c619a / 475 * 10^sub_0b1258a0
            else:
                s = 10
                t = 1
                idx = sub_0b1258a0
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
                if s * t > 0x89f87469a23920e033bd2ba79cd56c541366f05edad0089f87469a23920e03:
                    revert with 0, 17
                if arg1 and sub_bc5c619a > -1 / arg1:
                    revert with 0, 17
                if not 475 * s * t:
                    revert with 0, 18
                require ext_code.size(sub_e545338cAddress)
                call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_bc5c619a / 475 * s * t
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8a5396a3 > !arg1:
                    revert with 0, 17
                sub_8a5396a3 += arg1
                if sub_a4197afc > !(arg1 * sub_bc5c619a / 475 * s * t):
                    revert with 0, 17
                sub_a4197afc += arg1 * sub_bc5c619a / 475 * s * t
    else:
        if 2 == sub_f703f36f[msg.sender].field_512:
            if not sub_0b1258a0:
                if arg1 and sub_bc5c619a > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(sub_e545338cAddress)
                call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_bc5c619a / 450
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8a5396a3 > !arg1:
                    revert with 0, 17
                sub_8a5396a3 += arg1
                if sub_a4197afc > !(arg1 * sub_bc5c619a / 450):
                    revert with 0, 17
                sub_a4197afc += arg1 * sub_bc5c619a / 450
            else:
                if bool(bool(sub_0b1258a0 < 78)) or bool(bool(sub_0b1258a0 < 32)):
                    if 10^sub_0b1258a0 > 0x91a2b3c4d5e6f8091a2b3c4d5e6f8091a2b3c4d5e6f8091a2b3c4d5e6f8091:
                        revert with 0, 17
                    if arg1 and sub_bc5c619a > -1 / arg1:
                        revert with 0, 17
                    if not 450 * 10^sub_0b1258a0:
                        revert with 0, 18
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * sub_bc5c619a / 450 * 10^sub_0b1258a0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_8a5396a3 > !arg1:
                        revert with 0, 17
                    sub_8a5396a3 += arg1
                    if sub_a4197afc > !(arg1 * sub_bc5c619a / 450 * 10^sub_0b1258a0):
                        revert with 0, 17
                    sub_a4197afc += arg1 * sub_bc5c619a / 450 * 10^sub_0b1258a0
                else:
                    s = 10
                    t = 1
                    idx = sub_0b1258a0
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
                    if s * t > 0x91a2b3c4d5e6f8091a2b3c4d5e6f8091a2b3c4d5e6f8091a2b3c4d5e6f8091:
                        revert with 0, 17
                    if arg1 and sub_bc5c619a > -1 / arg1:
                        revert with 0, 17
                    if not 450 * s * t:
                        revert with 0, 18
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * sub_bc5c619a / 450 * s * t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_8a5396a3 > !arg1:
                        revert with 0, 17
                    sub_8a5396a3 += arg1
                    if sub_a4197afc > !(arg1 * sub_bc5c619a / 450 * s * t):
                        revert with 0, 17
                    sub_a4197afc += arg1 * sub_bc5c619a / 450 * s * t
        else:
            if sub_f703f36f[msg.sender].field_512 != 3:
                if not sub_0b1258a0:
                    if price and 1 > -1 / price:
                        revert with 0, 17
                    if arg1 and sub_bc5c619a > -1 / arg1:
                        revert with 0, 17
                    if not price:
                        revert with 0, 18
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * sub_bc5c619a / price
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_8a5396a3 > !arg1:
                        revert with 0, 17
                    sub_8a5396a3 += arg1
                    if sub_a4197afc > !(arg1 * sub_bc5c619a / price):
                        revert with 0, 17
                    sub_a4197afc += arg1 * sub_bc5c619a / price
                else:
                    if bool(bool(sub_0b1258a0 < 78)) or bool(bool(sub_0b1258a0 < 32)):
                        if price and 10^sub_0b1258a0 > -1 / price:
                            revert with 0, 17
                        if arg1 and sub_bc5c619a > -1 / arg1:
                            revert with 0, 17
                        if not price * 10^sub_0b1258a0:
                            revert with 0, 18
                        require ext_code.size(sub_e545338cAddress)
                        call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * sub_bc5c619a / price * 10^sub_0b1258a0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_8a5396a3 > !arg1:
                            revert with 0, 17
                        sub_8a5396a3 += arg1
                        if sub_a4197afc > !(arg1 * sub_bc5c619a / price * 10^sub_0b1258a0):
                            revert with 0, 17
                        sub_a4197afc += arg1 * sub_bc5c619a / price * 10^sub_0b1258a0
                    else:
                        s = 10
                        t = 1
                        idx = sub_0b1258a0
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
                        if price and s * t > -1 / price:
                            revert with 0, 17
                        if arg1 and sub_bc5c619a > -1 / arg1:
                            revert with 0, 17
                        if not price * s * t:
                            revert with 0, 18
                        require ext_code.size(sub_e545338cAddress)
                        call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * sub_bc5c619a / price * s * t
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_8a5396a3 > !arg1:
                            revert with 0, 17
                        sub_8a5396a3 += arg1
                        if sub_a4197afc > !(arg1 * sub_bc5c619a / price * s * t):
                            revert with 0, 17
                        sub_a4197afc += arg1 * sub_bc5c619a / price * s * t
            else:
                if not sub_0b1258a0:
                    if arg1 and sub_bc5c619a > -1 / arg1:
                        revert with 0, 17
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * sub_bc5c619a / 400
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_8a5396a3 > !arg1:
                        revert with 0, 17
                    sub_8a5396a3 += arg1
                    if sub_a4197afc > !(arg1 * sub_bc5c619a / 400):
                        revert with 0, 17
                    sub_a4197afc += arg1 * sub_bc5c619a / 400
                else:
                    if bool(bool(sub_0b1258a0 < 78)) or bool(bool(sub_0b1258a0 < 32)):
                        if 10^sub_0b1258a0 > 0xa3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3:
                            revert with 0, 17
                        if arg1 and sub_bc5c619a > -1 / arg1:
                            revert with 0, 17
                        if not 400 * 10^sub_0b1258a0:
                            revert with 0, 18
                        require ext_code.size(sub_e545338cAddress)
                        call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * sub_bc5c619a / 400 * 10^sub_0b1258a0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_8a5396a3 > !arg1:
                            revert with 0, 17
                        sub_8a5396a3 += arg1
                        if sub_a4197afc > !(arg1 * sub_bc5c619a / 400 * 10^sub_0b1258a0):
                            revert with 0, 17
                        sub_a4197afc += arg1 * sub_bc5c619a / 400 * 10^sub_0b1258a0
                    else:
                        s = 10
                        t = 1
                        idx = sub_0b1258a0
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
                        if s * t > 0xa3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3d70a3:
                            revert with 0, 17
                        if arg1 and sub_bc5c619a > -1 / arg1:
                            revert with 0, 17
                        if not 400 * s * t:
                            revert with 0, 18
                        require ext_code.size(sub_e545338cAddress)
                        call sub_e545338cAddress.issue(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * sub_bc5c619a / 400 * s * t
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_8a5396a3 > !arg1:
                            revert with 0, 17
                        sub_8a5396a3 += arg1
                        if sub_a4197afc > !(arg1 * sub_bc5c619a / 400 * s * t):
                            revert with 0, 17
                        sub_a4197afc += arg1 * sub_bc5c619a / 400 * s * t
    if not sub_f703f36f[msg.sender].field_0:
        if sub_861d8e13 > -2:
            revert with 0, 17
        sub_861d8e13++
    if sub_f703f36f[msg.sender].field_0 > !arg1:
        revert with 0, 17
    sub_f703f36f[msg.sender].field_0 += arg1
    emit Invest(msg.sender, arg1);
}



}
