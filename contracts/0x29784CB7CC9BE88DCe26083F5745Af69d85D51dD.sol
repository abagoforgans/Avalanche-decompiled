contract main {




// =====================  Runtime code  =====================


const getCurrentBalance = eth.balance(this.address)


uint256 whitelistCount;
uint256 sub_567e1dd1;
uint256 sub_9fd813e3;
address owner;
address stor5;
mapping of uint8 stor6;
mapping of uint256 sub_95b116e0;

function sub_2ae5d2f9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)])
}

function getWhitelistCount() {
    return whitelistCount
}

function sub_567e1dd1(?) {
    return sub_567e1dd1
}

function getOwner() {
    return owner
}

function sub_95b116e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_95b116e0[address(arg1)]
}

function sub_9fd813e3(?) {
    return sub_9fd813e3
}

function _fallback() payable {
    revert
}

function sub_e3098bef(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_567e1dd1 = arg1
}

function removeWhitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
    if not whitelistCount:
        revert with 'NH{q', 17
    whitelistCount--
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function emergency_withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e89cf43f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor6[address(arg1)]) != 1:
        stor6[address(arg1)] = 1
        if whitelistCount == -1:
            revert with 'NH{q', 17
        whitelistCount++
}

function sub_c1cfa475(?) payable {
    if not stor6[address(msg.sender)]:
        revert with 0, 'User is not whitelisted'
    if msg.value > -sub_95b116e0[address(msg.sender)] - 1:
        revert with 'NH{q', 17
    if msg.value + sub_95b116e0[address(msg.sender)] > sub_567e1dd1:
        revert with 0, 'Payment above maximum allocation'
    if sub_95b116e0[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    sub_95b116e0[address(msg.sender)] += msg.value
    if sub_9fd813e3 > -msg.value - 1:
        revert with 'NH{q', 17
    sub_9fd813e3 += msg.value
}

function sub_b9c3af33(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        if bool(stor6[mem[(32 * idx) + 140 len 20]]) != 1:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            stor6[mem[(32 * idx) + 140 len 20]] = 1
            if whitelistCount == -1:
                revert with 'NH{q', 17
            whitelistCount++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
