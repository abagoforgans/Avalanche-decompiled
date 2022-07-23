contract main {




// =====================  Runtime code  =====================


uint256 sub_8add6d8e;
uint256 sub_a5cd1fa7;
uint256 sub_59c8b3c1;
address owner;
mapping of uint8 stor4;
mapping of uint256 addressRefundValue;

function sub_59c8b3c1(?) {
    return sub_59c8b3c1
}

function getOwner() {
    return owner
}

function sub_8add6d8e(?) {
    return sub_8add6d8e
}

function sub_a5cd1fa7(?) {
    return sub_a5cd1fa7
}

function getAddressRefundValue(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addressRefundValue[address(arg1)]
}

function sub_f4bd5b0d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_a9ec4226(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
    addressRefundValue[address(arg1)] = 0
    if not sub_8add6d8e:
        revert with 0, 17
    sub_8add6d8e--
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= sub_59c8b3c1:
        revert with 0, 'wait'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bac32a85(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor4[address(arg1)]) != 1:
        stor4[address(arg1)] = 1
        addressRefundValue[address(arg1)] = arg2
        if sub_8add6d8e == -1:
            revert with 0, 17
        sub_8add6d8e++
}

function refund() {
    if bool(stor4[msg.sender]) != 1:
        revert with 0, 'caller can not be refund'
    if block.timestamp >= sub_59c8b3c1:
        revert with 0, 'late'
    stor4[msg.sender] = 0
    call msg.sender with:
       value addressRefundValue[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    addressRefundValue[msg.sender] = 0
    if sub_a5cd1fa7 == -1:
        revert with 0, 17
    sub_a5cd1fa7++
}

function sub_575841ed(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'error in list length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if bool(stor4[mem[(32 * idx) + 140 len 20]]) != 1:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            stor4[mem[(32 * idx) + 140 len 20]] = 1
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 5
            addressRefundValue[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if sub_8add6d8e == -1:
                revert with 0, 17
            sub_8add6d8e++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
