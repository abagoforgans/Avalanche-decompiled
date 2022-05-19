contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint16 stor2;
address stor2; offset 16
mapping of uint8 stor3;

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor0.field_0):
        revert with 0, 'Already Initialized'
    address(stor0.field_0) = arg1
    return 1
}

function sub_a6306692(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Caller =/= Token'
    uint16(stor2.field_0) = uint16(arg1)
}

function sub_78e50f1c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Caller =/= Token'
    if not uint8(stor0.field_160):
        uint8(stor0.field_160) = 1
        stor1 = block.number
        uint16(stor2.field_0) = uint16(arg1)
        address(stor2.field_16) = address(arg2)
}

function checkTransfer(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3[address(arg1)]:
        revert with 0, 'Sender/Recipient Blacklisted'
    if stor3[address(arg2)]:
        revert with 0, 'Sender/Recipient Blacklisted'
    if address(stor2.field_16) == arg1:
        if 2 > !stor1:
            revert with 0, 17
        if block.number <= stor1 + 2:
            stor3[address(arg2)] = 1
    return 1
}

function sub_8b338c5a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(stor2.field_16) == address(arg1):
        if 2 > !stor1:
            revert with 0, 17
        if block.number <= stor1 + 2:
            if arg3 > 0x6c19c2234266d2802889a8cd38e68ef00f339f4cf556759a05b35bbcdc006:
                revert with 0, 17
            return (9700 * arg3 / 10000)
    if this.address == address(arg2):
        return arg3
    if arg3 and uint16(stor2.field_0) > -1 / arg3:
        revert with 0, 17
    return (arg3 * uint16(stor2.field_0) / 10000)
}

function sub_e1baae1f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] == bool(cd[36])
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Caller =/= Token'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
