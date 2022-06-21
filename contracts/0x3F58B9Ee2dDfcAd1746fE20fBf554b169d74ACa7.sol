contract main {




// =====================  Runtime code  =====================


uint16 sub_31a72188;
mapping of uint8 stor1;
uint16 sub_4011d7cd;

function whitelistedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_31a72188(?) payable {
    return sub_31a72188
}

function sub_4011d7cd(?) payable {
    return sub_4011d7cd
}

function _fallback() payable {
    revert
}

function sub_8e7314d9(?) payable {
    if stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have already been whitelisted'
    if sub_4011d7cd >= sub_31a72188:
        revert with 0, 'Address limit reached'
    stor1[address(msg.sender)] = 1
    if sub_4011d7cd > 65534:
        revert with 'NH{q', 17
    sub_4011d7cd = uint16(sub_4011d7cd + 1)
}



}
