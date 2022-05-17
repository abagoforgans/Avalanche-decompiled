contract main {




// =====================  Runtime code  =====================


#
#  - process(uint256 arg1)
#
address stor0;
address stor1;
address stor2;
address stor3;
array of address stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of struct shares;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 minDistribution;

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function totalShares() {
    return totalShares
}

function minDistribution() {
    return minDistribution
}

function totalDividends() {
    return totalDividends
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function dividendsPerShare() {
    return dividendsPerShare
}

function totalDistributed() {
    return totalDistributed
}

function minPeriod() {
    return minPeriod
}

function _fallback() payable {
    revert
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    minPeriod = arg1
    minDistribution = arg2
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)].field_0:
        return 0
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 18
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 'NH{q', 17
    return ((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function deposit() payable {
    require msg.sender == stor0
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = stor2
    mem[ceil32(return_data.size) + 160] = stor1
    mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor3)
    call stor3.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if totalDividends > -1:
        revert with 'NH{q', 17
    if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if dividendsPerShare > -((ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares) - 1:
        revert with 'NH{q', 17
    dividendsPerShare += (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares
}

function claimDividend() {
    if shares[address(msg.sender)].field_0:
        if shares[address(msg.sender)].field_0:
            if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not dividendsPerShareAccuracyFactor:
                revert with 'NH{q', 18
            if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                if (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 > 0:
                    if totalDistributed > -(shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(msg.sender)].field_256 - 1:
                        revert with 'NH{q', 17
                    totalDistributed = totalDistributed + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    stor6[address(msg.sender)] = block.timestamp
                    if shares[address(msg.sender)].field_512 > -(shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(msg.sender)].field_256 - 1:
                        revert with 'NH{q', 17
                    shares[address(msg.sender)].field_512 = shares[address(msg.sender)].field_512 + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 'NH{q', 18
                    shares[address(msg.sender)].field_256 = shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function setShare(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    if shares[address(arg1)].field_0 > 0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 'NH{q', 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 > 0:
                        if totalDistributed > -(shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(arg1)].field_256 - 1:
                            revert with 'NH{q', 17
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        stor6[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > -(shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(arg1)].field_256 - 1:
                            revert with 'NH{q', 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                            revert with 'NH{q', 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 'NH{q', 18
                        shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if arg2 <= 0:
        if not arg2:
            if shares[address(arg1)].field_0 > 0:
                if stor4.length < 1:
                    revert with 'NH{q', 17
                if stor4.length - 1 >= stor4.length:
                    revert with 'NH{q', 50
                if stor5[address(arg1)] >= stor4.length:
                    revert with 'NH{q', 50
                stor4[stor5[address(arg1)]] = stor4[stor4.length]
                if stor4.length < 1:
                    revert with 'NH{q', 17
                if stor4.length - 1 >= stor4.length:
                    revert with 'NH{q', 50
                stor5[stor4[stor4.length]] = stor5[address(arg1)]
                if not stor4.length:
                    revert with 'NH{q', 49
                stor4[stor4.length] = 0
                stor4.length--
    else:
        if not shares[address(arg1)].field_0:
            stor5[address(arg1)] = stor4.length
            stor4.length++
            stor4[stor4.length] = arg1
        else:
            if not arg2:
                if shares[address(arg1)].field_0 > 0:
                    if stor4.length < 1:
                        revert with 'NH{q', 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 'NH{q', 50
                    if stor5[address(arg1)] >= stor4.length:
                        revert with 'NH{q', 50
                    stor4[stor5[address(arg1)]] = stor4[stor4.length]
                    if stor4.length < 1:
                        revert with 'NH{q', 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 'NH{q', 50
                    stor5[stor4[stor4.length]] = stor5[address(arg1)]
                    if not stor4.length:
                        revert with 'NH{q', 49
                    stor4[stor4.length] = 0
                    stor4.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 'NH{q', 17
    if totalShares - shares[address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    totalShares = totalShares - shares[address(arg1)].field_0 + arg2
    shares[address(arg1)].field_0 = arg2
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 18
    shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
}



}
