contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address shareholders;
mapping of uint256 shareholderIndexes;
mapping of uint256 shareholderClaims;
mapping of struct shares;
uint256 totalShares;
uint256 totalRewards;
uint256 totalRewarded;
uint256 rewardsPerShare;
uint256 rewardsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 minDistribution;
uint256 gas;
uint8 initialized;
uint256 stor15;

function totalRewards() {
    return totalRewards
}

function initialized() {
    return bool(initialized)
}

function totalShares() {
    return totalShares
}

function minDistribution() {
    return minDistribution
}

function shareholderClaims(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shareholderClaims[arg1]
}

function gas() {
    return gas
}

function shareholders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < shareholders.length
    return shareholders[arg1]
}

function totalRewarded() {
    return totalRewarded
}

function rewardsPerShareAccuracyFactor() {
    return rewardsPerShareAccuracyFactor
}

function rewardsPerShare() {
    return rewardsPerShare
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function shareholderIndexes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shareholderIndexes[arg1]
}

function minPeriod() {
    return minPeriod
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    if not initialized:
        if stor15 > !msg.value:
            revert with 0, 17
        stor15 += msg.value
    else:
        if totalRewards > !msg.value:
            revert with 0, 17
        totalRewards += msg.value
        if rewardsPerShareAccuracyFactor and msg.value > -1 / rewardsPerShareAccuracyFactor:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if rewardsPerShare > !(rewardsPerShareAccuracyFactor * msg.value / totalShares):
            revert with 0, 17
        rewardsPerShare += rewardsPerShareAccuracyFactor * msg.value / totalShares
}

function airdrop(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require stor0[msg.sender]
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value cd[((32 * idx) + arg2 + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xaed29d07(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xce7c2ac2(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return shares[cd[4]].field_0, shares[cd[4]].field_256, shares[cd[4]].field_512
                if uint32(call.func_hash) >> 224 != unknown_0xd0e30db0(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xd4fda1f2(?????):
                        require unknown_0xffd49c84(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return minPeriod
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return shareholderIndexes[cd[4]]
                if not initialized:
                    if stor15 > !msg.value:
                        revert with 0, 17
                    stor15 += msg.value
                else:
                    if totalRewards > !msg.value:
                        revert with 0, 17
                    totalRewards += msg.value
                    if rewardsPerShareAccuracyFactor and msg.value > -1 / rewardsPerShareAccuracyFactor:
                        revert with 0, 17
                    if not totalShares:
                        revert with 0, 18
                    if rewardsPerShare > !(rewardsPerShareAccuracyFactor * msg.value / totalShares):
                        revert with 0, 17
                    rewardsPerShare += rewardsPerShareAccuracyFactor * msg.value / totalShares
            else:
                if unknown_0xaed29d07(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalRewarded
                if unknown_0xb5381e53(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return rewardsPerShareAccuracyFactor
                if unknown_0xc7e1d0b1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return rewardsPerShare
                require unknown_0xce5494bb(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                require stor0[msg.sender]
                call address(cd[4]) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x66817df5(?????) > uint32(call.func_hash) >> 224:
                if totalRewards() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalRewards
                if unknown_0x158ef93e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(initialized)
                if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalShares
                require unknown_0x4fab0ae8(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return minDistribution
            if unknown_0x66817df5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return shareholderClaims[cd[4]]
            if uint32(call.func_hash) >> 224 != unknown_0x67243482(?????):
                if unknown_0x6ca7c216(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return gas
                require unknown_0xab377daa(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] < shareholders.length
                return shareholders[cd[4]]
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            require ('cd', 36).length <= test266151307()
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            require stor0[msg.sender]
            require ('cd', 36).length == ('cd', 4).length
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                call address(cd[((32 * idx) + cd[4] + 36)]) with:
                   value cd[((32 * idx) + cd[36] + 36)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}



}
