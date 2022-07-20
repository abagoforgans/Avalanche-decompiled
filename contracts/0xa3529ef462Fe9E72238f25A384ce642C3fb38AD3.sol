contract main {




// =====================  Runtime code  =====================


const getCurrentBalance = eth.balance(this.address)


uint256 sub_aee645dd;
uint256 sub_e4ec4603;
uint256 sub_dc4a47d2;
uint256 sub_ed4f8c87;
uint256 sub_4de96be7;
uint256 sub_38b66aed;
uint256 sub_318590f4;
uint256 sub_84ad157d;
uint256 sub_248edaeb;
uint256 sub_9fd813e3;
address owner;
address withdrawalAddress;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint256 sub_95b116e0;

function sub_248edaeb(?) {
    return sub_248edaeb
}

function sub_318590f4(?) {
    return sub_318590f4
}

function sub_38b66aed(?) {
    return sub_38b66aed
}

function sub_4de96be7(?) {
    return sub_4de96be7
}

function sub_84ad157d(?) {
    return sub_84ad157d
}

function getOwner() {
    return owner
}

function sub_95b116e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_95b116e0[address(arg1)]
}

function sub_971f07b9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[address(arg1)])
}

function sub_9fd813e3(?) {
    return sub_9fd813e3
}

function sub_aee645dd(?) {
    return sub_aee645dd
}

function sub_b0e76a3c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[address(arg1)])
}

function sub_bdf18419(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor15[address(arg1)])
}

function sub_dc4a47d2(?) {
    return sub_dc4a47d2
}

function sub_e4ec4603(?) {
    return sub_e4ec4603
}

function getWithdrawalAddress() {
    return withdrawalAddress
}

function sub_ed4f8c87(?) {
    return sub_ed4f8c87
}

function _fallback() payable {
    revert
}

function sub_3ce60b2b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_318590f4 = arg1
}

function sub_6117dc41(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_38b66aed = arg1
}

function sub_66af5f9f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_84ad157d = arg1
}

function sub_68d0c4a7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_248edaeb = arg1
}

function sub_cf1b5eea(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4de96be7 = arg1
}

function sub_d325702b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ed4f8c87 = arg1
}

function getWhitelistCount() {
    if sub_aee645dd > !sub_e4ec4603:
        revert with 0, 17
    if sub_aee645dd + sub_e4ec4603 > !sub_dc4a47d2:
        revert with 0, 17
    return (sub_aee645dd + sub_e4ec4603 + sub_dc4a47d2)
}

function whitelistTier(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor13[address(arg1)]:
        return 1
    if stor14[address(arg1)]:
        return 2
    if not stor15[address(arg1)]:
        return 0
    return 3
}

function sub_a787aebf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 0
    if not sub_e4ec4603:
        revert with 0, 17
    sub_e4ec4603--
}

function sub_bbdfb3a1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15[address(arg1)] = 0
    if not sub_dc4a47d2:
        revert with 0, 17
    sub_dc4a47d2--
}

function sub_cda72ae4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = 0
    if not sub_aee645dd:
        revert with 0, 17
    sub_aee645dd--
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call withdrawalAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_04ab844b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13[address(arg1)]) != 1:
        stor13[address(arg1)] = 1
        if sub_aee645dd == -1:
            revert with 0, 17
        sub_aee645dd++
}

function sub_2820d55a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14[address(arg1)]) != 1:
        stor14[address(arg1)] = 1
        if sub_e4ec4603 == -1:
            revert with 0, 17
        sub_e4ec4603++
}

function sub_6edde0c9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor15[address(arg1)]) != 1:
        stor15[address(arg1)] = 1
        if sub_dc4a47d2 == -1:
            revert with 0, 17
        sub_dc4a47d2++
}

function sub_220cd471(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        if bool(stor14[mem[(32 * idx) + 140 len 20]]) != 1:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            stor14[mem[(32 * idx) + 140 len 20]] = 1
            if sub_e4ec4603 == -1:
                revert with 0, 17
            sub_e4ec4603++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6c84b45f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        if bool(stor13[mem[(32 * idx) + 140 len 20]]) != 1:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 13
            stor13[mem[(32 * idx) + 140 len 20]] = 1
            if sub_aee645dd == -1:
                revert with 0, 17
            sub_aee645dd++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f33a900a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 15
        if bool(stor15[mem[(32 * idx) + 140 len 20]]) != 1:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 15
            stor15[mem[(32 * idx) + 140 len 20]] = 1
            if sub_dc4a47d2 == -1:
                revert with 0, 17
            sub_dc4a47d2++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c1cfa475(?) payable {
    if not stor13[msg.sender]:
        if not stor14[msg.sender]:
            if not stor15[msg.sender]:
                revert with 0, 'User is not whitelisted'
    if stor13[msg.sender]:
        if msg.value > !sub_95b116e0[msg.sender]:
            revert with 0, 17
        if msg.value + sub_95b116e0[msg.sender] < sub_ed4f8c87:
            revert with 0, 'Payment above minimum allocation'
        if msg.value > !sub_95b116e0[msg.sender]:
            revert with 0, 17
        if msg.value + sub_95b116e0[msg.sender] > sub_318590f4:
            revert with 0, 'Payment above maximum allocation'
    else:
        if stor14[msg.sender]:
            if msg.value > !sub_95b116e0[msg.sender]:
                revert with 0, 17
            if msg.value + sub_95b116e0[msg.sender] < sub_4de96be7:
                revert with 0, 'Payment above minimum allocation'
            if msg.value > !sub_95b116e0[msg.sender]:
                revert with 0, 17
            if msg.value + sub_95b116e0[msg.sender] > sub_84ad157d:
                revert with 0, 'Payment above maximum allocation'
        else:
            if stor15[msg.sender]:
                if msg.value > !sub_95b116e0[msg.sender]:
                    revert with 0, 17
                if msg.value + sub_95b116e0[msg.sender] < sub_38b66aed:
                    revert with 0, 'Payment above minimum allocation'
                if msg.value > !sub_95b116e0[msg.sender]:
                    revert with 0, 17
                if msg.value + sub_95b116e0[msg.sender] > sub_248edaeb:
                    revert with 0, 'Payment above maximum allocation'
    if sub_95b116e0[msg.sender] > !msg.value:
        revert with 0, 17
    sub_95b116e0[msg.sender] += msg.value
    if sub_9fd813e3 > !msg.value:
        revert with 0, 17
    sub_9fd813e3 += msg.value
}



}
