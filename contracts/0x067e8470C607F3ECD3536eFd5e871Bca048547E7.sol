contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address investTokenAddress;
address fundsReceiverAddress;
address eTokenAddress;
uint256 price;
uint256 sub_bc5c619a;
uint256 maxCap;
uint256 sub_b5224c44;
uint256 sub_8a5396a3;
uint256 sub_a4197afc;
uint256 startTime;
uint256 duration;
uint256 epochTime;
uint256 endTime;
uint8 saleEnabled;
uint256 minInvest;
uint256 sub_861d8e13;
mapping of uint256 stor18;
mapping of struct sub_f703f36f;

function duration() payable {
    return duration
}

function maxCap() payable {
    return maxCap
}

function fundsReceiver() payable {
    return fundsReceiverAddress
}

function endTime() payable {
    return endTime
}

function epochTime() payable {
    return epochTime
}

function minInvest() payable {
    return minInvest
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

function eToken() payable {
    return eTokenAddress
}

function price() payable {
    return price
}

function sub_a4197afc(?) payable {
    return sub_a4197afc
}

function sub_b5224c44(?) payable {
    return sub_b5224c44
}

function investToken() payable {
    return investTokenAddress
}

function sub_bc5c619a(?) payable {
    return sub_bc5c619a
}

function sub_f703f36f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f703f36f[arg1].field_0, bool(sub_f703f36f[arg1].field_256)
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
    if block.timestamp <= startTime:
        return 0
    if block.timestamp < startTime:
        revert with 0, 17
    if not epochTime:
        revert with 0, 18
    return (block.timestamp - startTime / epochTime)
}

function sub_0092f856(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
    duration = arg2
    if arg1 > !arg2:
        revert with 0, 17
    endTime = arg1 + arg2
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

function currentCap() payable {
    if block.timestamp <= startTime:
        return stor18[0]
    if block.timestamp < startTime:
        revert with 0, 17
    if not epochTime:
        revert with 0, 18
    if block.timestamp - startTime / epochTime > 10:
        if stor18[10]:
            if stor18[10] <= maxCap:
                return stor18[10]
    else:
        if not block.timestamp - startTime / epochTime:
            return stor18[0]
        if stor18[block.timestamp - stor11 / stor13]:
            if stor18[block.timestamp - stor11 / stor13] <= maxCap:
                return stor18[block.timestamp - stor11 / stor13]
    return maxCap
}

function sub_7477e780(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= endTime:
        revert with 0, 'SALE_NOT_FINISHED'
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args fundsReceiverAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILED'
}

function invest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp < startTime:
        revert with 0, 'SALE_NOT_STARTED'
    if not saleEnabled:
        revert with 0, 'SALE_NOT_ENABLED'
    if sub_8a5396a3 > !arg1:
        revert with 0, 17
    if sub_8a5396a3 + arg1 > sub_b5224c44:
        revert with 0, 'ABOVE_RAISE_LIMIT'
    if block.timestamp > endTime:
        revert with 0, 'SALE_FINISHED'
    if block.timestamp <= startTime:
        if sub_f703f36f[msg.sender].field_0 > !arg1:
            revert with 0, 17
        if sub_f703f36f[msg.sender].field_0 + arg1 < minInvest:
            revert with 0, 'BELOW_INVEST_TOKEN_AMOUNT'
        if sub_f703f36f[msg.sender].field_0 > !arg1:
            revert with 0, 17
        if sub_f703f36f[msg.sender].field_0 + arg1 > stor18[0]:
            revert with 0, 'ABOVE_MAX_CONTRIBUTION'
    else:
        if block.timestamp < startTime:
            revert with 0, 17
        if not epochTime:
            revert with 0, 18
        if sub_f703f36f[msg.sender].field_0 > !arg1:
            revert with 0, 17
        if sub_f703f36f[msg.sender].field_0 + arg1 < minInvest:
            revert with 0, 'BELOW_INVEST_TOKEN_AMOUNT'
        if sub_f703f36f[msg.sender].field_0 > !arg1:
            revert with 0, 17
        if block.timestamp - startTime / epochTime > 10:
            if not stor18[10]:
                if sub_f703f36f[msg.sender].field_0 + arg1 > maxCap:
                    revert with 0, 'ABOVE_MAX_CONTRIBUTION'
            else:
                if stor18[10] <= maxCap:
                    if sub_f703f36f[msg.sender].field_0 + arg1 > stor18[10]:
                        revert with 0, 'ABOVE_MAX_CONTRIBUTION'
                else:
                    if sub_f703f36f[msg.sender].field_0 + arg1 > maxCap:
                        revert with 0, 'ABOVE_MAX_CONTRIBUTION'
        else:
            if not block.timestamp - startTime / epochTime:
                if sub_f703f36f[msg.sender].field_0 + arg1 > stor18[0]:
                    revert with 0, 'ABOVE_MAX_CONTRIBUTION'
            else:
                if not stor18[block.timestamp - stor11 / stor13]:
                    if sub_f703f36f[msg.sender].field_0 + arg1 > maxCap:
                        revert with 0, 'ABOVE_MAX_CONTRIBUTION'
                else:
                    if stor18[block.timestamp - stor11 / stor13] <= maxCap:
                        if sub_f703f36f[msg.sender].field_0 + arg1 > stor18[block.timestamp - stor11 / stor13]:
                            revert with 0, 'ABOVE_MAX_CONTRIBUTION'
                    else:
                        if sub_f703f36f[msg.sender].field_0 + arg1 > maxCap:
                            revert with 0, 'ABOVE_MAX_CONTRIBUTION'
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'TRANSFER_FAILED'
    require ext_code.size(investTokenAddress)
    staticcall investTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if price and 1 > -1 / price:
            revert with 0, 17
        require ext_code.size(eTokenAddress)
        staticcall eTokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg1 and sub_bc5c619a > -1 / arg1:
                revert with 0, 17
            if arg1 * sub_bc5c619a and 1 > -1 / arg1 * sub_bc5c619a:
                revert with 0, 17
            if not price:
                revert with 0, 18
            require ext_code.size(eTokenAddress)
            call eTokenAddress.issue(address arg1, uint256 arg2) with:
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
            if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                if arg1 and sub_bc5c619a > -1 / arg1:
                    revert with 0, 17
                if arg1 * sub_bc5c619a and 10^ext_call.return_data[0] > -1 / arg1 * sub_bc5c619a:
                    revert with 0, 17
                if not price:
                    revert with 0, 18
                require ext_code.size(eTokenAddress)
                call eTokenAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_bc5c619a * 10^ext_call.return_data[0] / price
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8a5396a3 > !arg1:
                    revert with 0, 17
                sub_8a5396a3 += arg1
                if sub_a4197afc > !(arg1 * sub_bc5c619a * 10^ext_call.return_data[0] / price):
                    revert with 0, 17
                sub_a4197afc += arg1 * sub_bc5c619a * 10^ext_call.return_data[0] / price
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[0]
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
                if arg1 and sub_bc5c619a > -1 / arg1:
                    revert with 0, 17
                if arg1 * sub_bc5c619a and s * t > -1 / arg1 * sub_bc5c619a:
                    revert with 0, 17
                if not price:
                    revert with 0, 18
                require ext_code.size(eTokenAddress)
                call eTokenAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_bc5c619a * s * t / price
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8a5396a3 > !arg1:
                    revert with 0, 17
                sub_8a5396a3 += arg1
                if sub_a4197afc > !(arg1 * sub_bc5c619a * s * t / price):
                    revert with 0, 17
                sub_a4197afc += arg1 * sub_bc5c619a * s * t / price
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if price and 10^ext_call.return_data[31 len 1] > -1 / price:
                revert with 0, 17
            require ext_code.size(eTokenAddress)
            staticcall eTokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg1 and sub_bc5c619a > -1 / arg1:
                    revert with 0, 17
                if arg1 * sub_bc5c619a and 1 > -1 / arg1 * sub_bc5c619a:
                    revert with 0, 17
                if not price * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                require ext_code.size(eTokenAddress)
                call eTokenAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_bc5c619a / price * 10^uint8(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_8a5396a3 > !arg1:
                    revert with 0, 17
                sub_8a5396a3 += arg1
                if sub_a4197afc > !(arg1 * sub_bc5c619a / price * 10^uint8(ext_call.return_data[0])):
                    revert with 0, 17
                sub_a4197afc += arg1 * sub_bc5c619a / price * 10^uint8(ext_call.return_data[0])
            else:
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if arg1 and sub_bc5c619a > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_bc5c619a and 10^ext_call.return_data[0] > -1 / arg1 * sub_bc5c619a:
                        revert with 0, 17
                    if not price * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * sub_bc5c619a * 10^ext_call.return_data[0] / price * 10^uint8(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_8a5396a3 > !arg1:
                        revert with 0, 17
                    sub_8a5396a3 += arg1
                    if sub_a4197afc > !(arg1 * sub_bc5c619a * 10^ext_call.return_data[0] / price * 10^uint8(ext_call.return_data[0])):
                        revert with 0, 17
                    sub_a4197afc += arg1 * sub_bc5c619a * 10^ext_call.return_data[0] / price * 10^uint8(ext_call.return_data[0])
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[0]
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
                    if arg1 and sub_bc5c619a > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_bc5c619a and s * t > -1 / arg1 * sub_bc5c619a:
                        revert with 0, 17
                    if not price * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * sub_bc5c619a * s * t / price * 10^uint8(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_8a5396a3 > !arg1:
                        revert with 0, 17
                    sub_8a5396a3 += arg1
                    if sub_a4197afc > !(arg1 * sub_bc5c619a * s * t / price * 10^uint8(ext_call.return_data[0])):
                        revert with 0, 17
                    sub_a4197afc += arg1 * sub_bc5c619a * s * t / price * 10^uint8(ext_call.return_data[0])
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
            if price and s * t > -1 / price:
                revert with 0, 17
            require ext_code.size(eTokenAddress)
            staticcall eTokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg1 and sub_bc5c619a > -1 / arg1:
                    revert with 0, 17
                if arg1 * sub_bc5c619a and 1 > -1 / arg1 * sub_bc5c619a:
                    revert with 0, 17
                if not price * s * t:
                    revert with 0, 18
                require ext_code.size(eTokenAddress)
                call eTokenAddress.issue(address arg1, uint256 arg2) with:
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
                if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
                    if arg1 and sub_bc5c619a > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_bc5c619a and 10^ext_call.return_data[0] > -1 / arg1 * sub_bc5c619a:
                        revert with 0, 17
                    if not price * s * t:
                        revert with 0, 18
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * sub_bc5c619a * 10^ext_call.return_data[0] / price * s * t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_8a5396a3 > !arg1:
                        revert with 0, 17
                    sub_8a5396a3 += arg1
                    if sub_a4197afc > !(arg1 * sub_bc5c619a * 10^ext_call.return_data[0] / price * s * t):
                        revert with 0, 17
                    sub_a4197afc += arg1 * sub_bc5c619a * 10^ext_call.return_data[0] / price * s * t
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[0]
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    if arg1 and sub_bc5c619a > -1 / arg1:
                        revert with 0, 17
                    if arg1 * sub_bc5c619a and u * v > -1 / arg1 * sub_bc5c619a:
                        revert with 0, 17
                    if not price * s * t:
                        revert with 0, 18
                    require ext_code.size(eTokenAddress)
                    call eTokenAddress.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * sub_bc5c619a * u * v / price * s * t
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_8a5396a3 > !arg1:
                        revert with 0, 17
                    sub_8a5396a3 += arg1
                    if sub_a4197afc > !(arg1 * sub_bc5c619a * u * v / price * s * t):
                        revert with 0, 17
                    sub_a4197afc += arg1 * sub_bc5c619a * u * v / price * s * t
    if not sub_f703f36f[msg.sender].field_0:
        if sub_861d8e13 > -2:
            revert with 0, 17
        sub_861d8e13++
    if sub_f703f36f[msg.sender].field_0 > !arg1:
        revert with 0, 17
    sub_f703f36f[msg.sender].field_0 += arg1
    emit Invested(msg.sender, arg1);
    stor1 = 1
}



}
