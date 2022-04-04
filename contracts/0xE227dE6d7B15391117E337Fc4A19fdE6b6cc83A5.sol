contract main {




// =====================  Runtime code  =====================


#
#  - addressToString(address arg1)
#  - getShareholderInfo(address arg1)
#  - cashout(uint256 arg1)
#  - getCurrentTokens()
#
address whomstAddress;
address whomst_tokenAddress;
address stor2;
address whomst_routerAddress;
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
uint256 sub_d947f519;
uint8 areRewardsEnabled;
mapping of address stor18;
array of address stor19;
uint8 sub_17a89212;

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function sub_17a89212(?) {
    return bool(sub_17a89212)
}

function rewardsEnabled() {
    return bool(areRewardsEnabled)
}

function totalShares() {
    return totalShares
}

function getTotalDistributed() {
    return totalDistributed
}

function getCurrentTokenLength() {
    return stor19.length
}

function whomst_router() {
    return whomst_routerAddress
}

function totalDividends() {
    return totalDividends
}

function areRewardsEnabled() {
    return bool(areRewardsEnabled)
}

function whomst() {
    return whomstAddress
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function sub_d947f519(?) {
    return sub_d947f519
}

function dividendsPerShare() {
    return dividendsPerShare
}

function whomst_token() {
    return whomst_tokenAddress
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

function enableRewards() {
    require msg.sender == whomstAddress
    areRewardsEnabled = 1
}

function setRandomEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == whomstAddress
    sub_17a89212 = uint8(arg1)
}

function checkToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor18[address(arg1)]:
        return 1
    else:
        return 0
}

function setReflectionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == whomstAddress
    minPeriod = arg1
    sub_d947f519 = arg2
}

function updateRewardsToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == whomstAddress
    whomst_routerAddress = arg1
    whomst_tokenAddress = arg2
}

function addTokenToList(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == whomstAddress
    if stor18[address(arg1)]:
        revert with 0, 'Token already exists.'
    stor18[address(arg1)] = arg2
    stor19.length++
    stor19[stor19.length] = arg1
}

function setToken(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == whomstAddress
    whomstAddress = arg1
    whomst_routerAddress = arg3
    whomst_tokenAddress = arg2
    require ext_code.size(arg3)
    staticcall arg3.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor2 = ext_call.return_data[12 len 20]
}

function removeTokenFromList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == whomstAddress
    if not stor18[address(arg1)]:
        revert with 0, 'Token does not exist.'
    if 1 >= stor19.length:
        revert with 0, 'Cannot remove the last token!'
    idx = 0
    while idx < stor19.length:
        mem[0] = 19
        if stor19[idx] == arg1:
            if stor19.length < 1:
                revert with 0, 17
            if stor19.length - 1 >= stor19.length:
                revert with 0, 50
            if idx >= stor19.length:
                revert with 0, 50
            stor19[idx] = stor19[stor19.length]
            if not stor19.length:
                revert with 0, 49
            stor19[stor19.length] = 0
            stor19.length--
            mem[0] = arg1
            mem[32] = 18
            stor18[address(arg1)] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)].field_0:
        return 0
    if not shares[address(arg1)].field_0:
        if 0 <= shares[address(arg1)].field_256:
            return 0
        if shares[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < shares[address(arg1)].field_256:
            revert with 0, 17
        return -shares[address(arg1)].field_256
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 0, 17
    return ((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function sub_2e68d0ab(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == whomstAddress
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if stor18[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'Token already exists.'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 18
        stor18[address(cd[((32 * idx) + cd[4] + 36)])] = address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor19.length++
        mem[0] = 19
        stor19[stor19.length] = address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function load() payable {
    if areRewardsEnabled:
        if totalDividends:
            if totalDividends > !msg.value:
                revert with 0, 17
            totalDividends += msg.value
            if dividendsPerShareAccuracyFactor and msg.value > -1 / dividendsPerShareAccuracyFactor:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if dividendsPerShare > !(dividendsPerShareAccuracyFactor * msg.value / totalShares):
                revert with 0, 17
            dividendsPerShare += dividendsPerShareAccuracyFactor * msg.value / totalShares
        else:
            if eth.balance(this.address) > 0:
                totalDividends = eth.balance(this.address)
                if dividendsPerShareAccuracyFactor and eth.balance(this.address) > -1 / dividendsPerShareAccuracyFactor:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if dividendsPerShare > !(dividendsPerShareAccuracyFactor * eth.balance(this.address) / totalShares):
                    revert with 0, 17
                dividendsPerShare += dividendsPerShareAccuracyFactor * eth.balance(this.address) / totalShares
            else:
                if totalDividends > !msg.value:
                    revert with 0, 17
                totalDividends += msg.value
                if dividendsPerShareAccuracyFactor and msg.value > -1 / dividendsPerShareAccuracyFactor:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if dividendsPerShare > !(dividendsPerShareAccuracyFactor * msg.value / totalShares):
                    revert with 0, 17
                dividendsPerShare += dividendsPerShareAccuracyFactor * msg.value / totalShares
}

function giveMeWelfarePlease(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == whomstAddress
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if not shares[address(arg1)].field_0:
                if 0 > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if -shares[address(arg1)].field_256:
                        if totalDistributed > !-shares[address(arg1)].field_256:
                            revert with 0, 17
                        totalDistributed -= shares[address(arg1)].field_256
                        if sub_17a89212:
                            if not stor19.length:
                                revert with 0, 18
                            if sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length >= stor19.length:
                                revert with 0, 50
                            if stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length] == stor2:
                                call arg1 with:
                                   value -shares[address(arg1)].field_256 wei
                                     gas 30000 wei
                            else:
                                mem[308] = stor2
                                mem[340] = stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]
                                mem[372] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[376] = 0
                                idx = 0
                                s = 536
                                t = 308
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor18[stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]])
                                call stor18[stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value -shares[address(arg1)].field_256 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(arg1), block.timestamp, 2, mem[536 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(whomst_routerAddress)
                            staticcall whomst_routerAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = whomst_tokenAddress
                            mem[ceil32(return_data.size) + 256] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 192
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(whomst_routerAddress)
                            call whomst_routerAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                               value -shares[address(arg1)].field_256 wei
                                 gas gas_remaining wei
                                args 0, 128, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        stor6[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !-shares[address(arg1)].field_256:
                            revert with 0, 17
                        shares[address(arg1)].field_512 -= shares[address(arg1)].field_256
                        if not shares[address(arg1)].field_0:
                            shares[address(arg1)].field_256 = 0
                        else:
                            if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
            else:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 0, 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if sub_17a89212:
                            if not stor19.length:
                                revert with 0, 18
                            if sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length >= stor19.length:
                                revert with 0, 50
                            if stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length] == stor2:
                                call arg1 with:
                                   value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                     gas 30000 wei
                            else:
                                mem[308] = stor2
                                mem[340] = stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]
                                mem[372] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[376] = 0
                                idx = 0
                                s = 536
                                t = 308
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor18[stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]])
                                call stor18[stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(arg1), block.timestamp, 2, mem[536 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(whomst_routerAddress)
                            staticcall whomst_routerAddress.WAVAX() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = whomst_tokenAddress
                            mem[ceil32(return_data.size) + 256] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 192
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(whomst_routerAddress)
                            call whomst_routerAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                               value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                 gas gas_remaining wei
                                args 0, 128, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        stor6[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if not shares[address(arg1)].field_0:
                            shares[address(arg1)].field_256 = 0
                        else:
                            if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                revert with 0, 17
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 18
                            shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function tally(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == whomstAddress
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if not shares[address(arg1)].field_0:
                    if 0 > shares[address(arg1)].field_256:
                        if shares[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < shares[address(arg1)].field_256:
                            revert with 0, 17
                        if -shares[address(arg1)].field_256:
                            if totalDistributed > !-shares[address(arg1)].field_256:
                                revert with 0, 17
                            totalDistributed -= shares[address(arg1)].field_256
                            if sub_17a89212:
                                if not stor19.length:
                                    revert with 0, 18
                                if sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length >= stor19.length:
                                    revert with 0, 50
                                if stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length] == stor2:
                                    call arg1 with:
                                       value -shares[address(arg1)].field_256 wei
                                         gas 30000 wei
                                else:
                                    mem[308] = stor2
                                    mem[340] = stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]
                                    mem[372] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[376] = 0
                                    idx = 0
                                    s = 536
                                    t = 308
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor18[stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]])
                                    call stor18[stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value -shares[address(arg1)].field_256 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(arg1), block.timestamp, 2, mem[536 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(whomst_routerAddress)
                                staticcall whomst_routerAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                mem[224] = whomst_tokenAddress
                                mem[ceil32(return_data.size) + 256] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 260] = 0
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 192
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(whomst_routerAddress)
                                call whomst_routerAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value -shares[address(arg1)].field_256 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            stor6[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !-shares[address(arg1)].field_256:
                                revert with 0, 17
                            shares[address(arg1)].field_512 -= shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                shares[address(arg1)].field_256 = 0
                            else:
                                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 0, 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 18
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                else:
                    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                        if shares[address(arg1)].field_256 > shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                            revert with 0, 17
                        if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            if sub_17a89212:
                                if not stor19.length:
                                    revert with 0, 18
                                if sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length >= stor19.length:
                                    revert with 0, 50
                                if stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length] == stor2:
                                    call arg1 with:
                                       value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                         gas 30000 wei
                                else:
                                    mem[308] = stor2
                                    mem[340] = stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]
                                    mem[372] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                    mem[376] = 0
                                    idx = 0
                                    s = 536
                                    t = 308
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor18[stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]])
                                    call stor18[stor19[sha3(block.gasprice, block.timestamp, block.coinbase) % stor19.length]].swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(arg1), block.timestamp, 2, mem[536 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(whomst_routerAddress)
                                staticcall whomst_routerAddress.WAVAX() with:
                                        gas gas_remaining wei
                                mem[256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                mem[224] = whomst_tokenAddress
                                mem[ceil32(return_data.size) + 256] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 260] = 0
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 192
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(whomst_routerAddress)
                                call whomst_routerAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(arg1), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            stor6[address(arg1)] = block.timestamp
                            if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                                revert with 0, 17
                            shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            if not shares[address(arg1)].field_0:
                                shares[address(arg1)].field_256 = 0
                            else:
                                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                                    revert with 0, 17
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 18
                                shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if arg2 <= 0:
        if not arg2:
            if shares[address(arg1)].field_0:
                if stor4.length < 1:
                    revert with 0, 17
                if stor4.length - 1 >= stor4.length:
                    revert with 0, 50
                if stor5[address(arg1)] >= stor4.length:
                    revert with 0, 50
                stor4[stor5[address(arg1)]] = stor4[stor4.length]
                if stor4.length < 1:
                    revert with 0, 17
                if stor4.length - 1 >= stor4.length:
                    revert with 0, 50
                stor5[stor4[stor4.length]] = stor5[address(arg1)]
                if not stor4.length:
                    revert with 0, 49
                stor4[stor4.length] = 0
                stor4.length--
    else:
        if not shares[address(arg1)].field_0:
            stor5[address(arg1)] = stor4.length
            stor4.length++
            stor4[stor4.length] = arg1
        else:
            if not arg2:
                if shares[address(arg1)].field_0:
                    if stor4.length < 1:
                        revert with 0, 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 0, 50
                    if stor5[address(arg1)] >= stor4.length:
                        revert with 0, 50
                    stor4[stor5[address(arg1)]] = stor4[stor4.length]
                    if stor4.length < 1:
                        revert with 0, 17
                    if stor4.length - 1 >= stor4.length:
                        revert with 0, 50
                    stor5[stor4[stor4.length]] = stor5[address(arg1)]
                    if not stor4.length:
                        revert with 0, 49
                    stor4[stor4.length] = 0
                    stor4.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    totalShares = totalShares - shares[address(arg1)].field_0 + arg2
    shares[address(arg1)].field_0 = arg2
    if not arg2:
        shares[address(arg1)].field_256 = 0
    else:
        if arg2 and dividendsPerShare > -1 / arg2:
            revert with 0, 17
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 18
        shares[address(arg1)].field_256 = arg2 * dividendsPerShare / dividendsPerShareAccuracyFactor
}



}
