contract main {




// =====================  Runtime code  =====================


const name = Array(len=33, data=0xfe546f6b656e734661726d436f6e67726573734d656d6265727352656769737472, mem[161 len 31], mem[223 len 1])


address sub_903f6795Address;
uint256 minimalQuorum;
mapping of uint8 stor2;
mapping of struct sub_8eca4a16;
array of struct allMembers;

function getNumberOfMembers() payable {
    return allMembers.length
}

function sub_8eca4a16(?) payable {
    require calldata.size - 4 >= 32
    return sub_8eca4a16[arg1].field_0, sub_8eca4a16[arg1].field_256
}

function sub_903f6795(?) payable {
    return sub_903f6795Address
}

function isMember(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function getMinimalQuorum() payable {
    return minimalQuorum
}

function allMembers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allMembers.length
    return allMembers[arg1].field_0
}

function _fallback() payable {
    revert
}

function getMemberInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return address(arg1), sub_8eca4a16[address(arg1)].field_0, sub_8eca4a16[address(arg1)].field_256
}

function changeMinimumQuorum(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_903f6795Address
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x794d696e696d756d2071756f72756d206d75737420626520686967686572207468616e20,
                    mem[200 len 28]
    minimalQuorum = arg1
}

function addMember(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == sub_903f6795Address
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x30546172676574206d656d6265722063616e206e6f742062652030783020616464726573,
                    mem[200 len 28]
    if stor2[address(arg1)]:
        revert with 0, 'Member already exists'
    sub_8eca4a16[address(arg1)].field_0 = arg2
    sub_8eca4a16[address(arg1)].field_256 = block.timestamp
    allMembers.length++
    allMembers[allMembers.length].field_0 = arg1
    if 1 > allMembers.length:
        revert with 0, 'SafeMath: subtraction overflow'
    minimalQuorum = allMembers.length - 1
    stor2[address(arg1)] = 1
    emit MembershipChanged(address(arg1), 1);
}

function getAllMemberAddresses() payable {
    if not allMembers.length:
        mem[(32 * allMembers.length) + 128] = 32
        mem[(32 * allMembers.length) + 160] = allMembers.length
        mem[(32 * allMembers.length) + 192 len floor32(allMembers.length)] = mem[128 len floor32(allMembers.length)]
        return memory
          from (32 * allMembers.length) + 128
           len (96 * allMembers.length) + 64
    mem[128] = address(allMembers.field_0)
    idx = 128
    s = 0
    while (32 * allMembers.length) + 96 > idx:
        mem[idx + 32] = allMembers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allMembers.length) + 192 len floor32(allMembers.length)] = mem[128 len floor32(allMembers.length)]
    return Array(len=allMembers.length, data=mem[128 len floor32(allMembers.length)], mem[(32 * allMembers.length) + floor32(allMembers.length) + 192 len (32 * allMembers.length) - floor32(allMembers.length)]), 
}

function removeMember(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_903f6795Address
    if not stor2[address(arg1)]:
        revert with 0, 'Member does not exits'
    require var10001 < allMembers.length
    if allMembers[var12001].field_0 == arg1:
        require allMembers.length - 1 < allMembers.length
        require var12004 < allMembers.length
        allMembers[var12004].field_0 = allMembers[allMembers.length].field_0
    else:
        require var12004 != allMembers.length
        require var12004 + 1 < allMembers.length
        idx = var12004
        while allMembers[idx].field_256 != arg1:
            require idx + 1 != allMembers.length
            require idx + 2 < allMembers.length
            mem[0] = 4
            idx = idx + 1
            continue 
        require allMembers.length - 1 < allMembers.length
        require None + 3 < allMembers.length
        allMembers[None].field_768 = allMembers[allMembers.length].field_0
    require allMembers.length
    allMembers[allMembers.length].field_0 = 0
    allMembers.length--
    stor2[address(arg1)] = 0
    sub_8eca4a16[address(arg1)].field_0 = 0x3078300000000000000000000000000000000000000000000000000000000000
    sub_8eca4a16[address(arg1)].field_256 = block.timestamp
    if 1 > minimalQuorum:
        revert with 0, 'SafeMath: subtraction overflow'
    minimalQuorum--
    emit MembershipChanged(address(arg1), 0);
}



}
