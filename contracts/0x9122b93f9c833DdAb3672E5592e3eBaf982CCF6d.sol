contract main {




// =====================  Runtime code  =====================


const sub_f556fcdb(?) = address(this.address)


address stor0;
address stor1;
address targetTokenAddress;
uint8 stor5;
uint256 sub_f31adb3a;
mapping of struct stor8;

function sub_10693bb3(?) payable {
    return bool(stor5)
}

function targetToken() payable {
    return targetTokenAddress
}

function sub_f31adb3a(?) payable {
    return sub_f31adb3a
}

function _fallback() payable {
    revert
}

function sub_53df82c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            revert with 0, 'Caller is not owner'
    stor5 = uint8(bool(arg1))
}

function sub_2ffa12db(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            revert with 0, 'Caller is not owner'
    stor8[address(arg1)].field_0 = arg2
}

function sub_5b669de4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor8[address(arg1)].field_512 == sub_f31adb3a:
        return stor8[address(arg1)].field_0, stor8[address(arg1)].field_256
    return stor8[address(arg1)].field_0, 0
}

function sub_847040d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            revert with 0, 'Caller is not owner'
    targetTokenAddress = address(arg1)
    if sub_f31adb3a == -1:
        revert with 0, 17
    sub_f31adb3a++
}

function sub_8b803159(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor5:
        revert with 0, 'Not distributing!'
    if sub_f31adb3a != stor8[address(arg1)].field_512:
        stor8[address(arg1)].field_512 = sub_f31adb3a
        if stor8[address(arg1)].field_256:
            stor8[address(arg1)].field_256 = 0
    if stor8[address(arg1)].field_0 < stor8[address(arg1)].field_256:
        revert with 0, 17
    if stor8[address(arg1)].field_0 - stor8[address(arg1)].field_256:
        if stor8[address(arg1)].field_256 > !(stor8[address(arg1)].field_0 - stor8[address(arg1)].field_256):
            revert with 0, 17
        stor8[address(arg1)].field_256 = stor8[address(arg1)].field_0
    return (stor8[address(arg1)].field_0 - stor8[address(arg1)].field_256)
}

function sub_e383529d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            revert with 0, 'Caller is not owner'
    if not ('cd', 4).length:
        revert with 0, 'arrs mismatch'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'arrs mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] > 0:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 8
            stor8[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
