contract main {




// =====================  Runtime code  =====================


#
#  - activeUser(address arg1)
#  - suspendUser(address arg1)
#  - sub_1fade77e(?)
#  - isAdmin(address arg1)
#  - updateAccreditationCheck(bool arg1)
#  - storedAllData()
#  - sub_3736fd12(?)
#  - updateAccredationWhitelistedUser(address arg1, uint256 arg2)
#  - updateTaxWhitelistedUser(address arg1, uint256 arg2)
#  - addWhitelistedUser(address arg1, bool arg2, bool arg3, uint256 arg4)
#  - sub_7f3efdb5(?)
#  - sub_8c438908(?)
#  - sub_94a4bc72(?)
#  - sub_a4442db6(?)
#  - updateKycWhitelistedUser(address arg1, bool arg2)
#  - removeWhitelistedManager(address arg1)
#  - removeWhitelistedUser(address arg1)
#  - sub_c5900a8e(?)
#  - isWhitelistedManager(address arg1)
#  - addAdmin(address arg1, string arg2)
#  - isWhitelistedUser(address arg1)
#  - sub_e851e0c4(?)
#  - sub_f1147fa4(?)
#  - sub_fc17f665(?)
#
mapping of struct stor2;
mapping of struct stor3;
mapping of struct stor4;
address stor5;
address feeAddress;
uint8 stor7; offset 160
address stor7;
mapping of struct stor8;
mapping of struct stor9;
mapping of uint8 stor11;
mapping of struct stor12;
array of address userList;

function getFeeAddress() payable {
    return feeAddress
}

function sub_8d3d4f08(?) payable {
    return bool(uint8(stor7.field_160))
}

function userList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < userList.length
    return userList[arg1]
}

function closeTokenismWhitelist() payable {
    if stor2[address(msg.sender)].field_0:
        if stor2[address(msg.sender)].field_0 == stor2[address(msg.sender)].field_1 < 32:
            revert with 0, 34
        if stor2[address(msg.sender)].field_0:
            if stor2[address(msg.sender)].field_0 == stor2[address(msg.sender)].field_1 < 32:
                revert with 0, 34
            if stor2[address(msg.sender)].field_1:
                if 31 >= stor2[address(msg.sender)].field_1:
                    mem[128] = 256 * stor2[address(msg.sender)].field_8
                else:
                    mem[128] = stor2[address(msg.sender)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(msg.sender)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(msg.sender)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[address(msg.sender)].field_0 == stor2[address(msg.sender)].field_1 < 32:
                revert with 0, 34
            if stor2[address(msg.sender)].field_1:
                if 31 >= stor2[address(msg.sender)].field_1:
                    mem[128] = 256 * stor2[address(msg.sender)].field_8
                else:
                    mem[128] = stor2[address(msg.sender)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(msg.sender)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(msg.sender)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor2[address(msg.sender)].field_1) + 128] = 10
        mem[ceil32(stor2[address(msg.sender)].field_1) + 160] = 0x737570657241646d696e00000000000000000000000000000000000000000000
        if stor2[address(msg.sender)].field_1 <= 10:
            idx = 0
            while idx < stor2[address(msg.sender)].field_1:
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(msg.sender)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    revert with 0, 'only superAdmin can destroy Contract'
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(msg.sender)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    revert with 0, 'only superAdmin can destroy Contract'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 10:
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(msg.sender)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    revert with 0, 'only superAdmin can destroy Contract'
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(msg.sender)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    revert with 0, 'only superAdmin can destroy Contract'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor2[address(msg.sender)].field_1 < 10:
            revert with 0, 'only superAdmin can destroy Contract'
        if stor2[address(msg.sender)].field_1 > 10:
            revert with 0, 'only superAdmin can destroy Contract'
    else:
        if stor2[address(msg.sender)].field_0 == stor2[address(msg.sender)].field_1 < 32:
            revert with 0, 34
        if stor2[address(msg.sender)].field_0:
            if stor2[address(msg.sender)].field_0 == stor2[address(msg.sender)].field_1 < 32:
                revert with 0, 34
            if stor2[address(msg.sender)].field_1:
                if 31 >= stor2[address(msg.sender)].field_1:
                    mem[128] = 256 * stor2[address(msg.sender)].field_8
                else:
                    mem[128] = stor2[address(msg.sender)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(msg.sender)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(msg.sender)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[address(msg.sender)].field_0 == stor2[address(msg.sender)].field_1 < 32:
                revert with 0, 34
            if stor2[address(msg.sender)].field_1:
                if 31 >= stor2[address(msg.sender)].field_1:
                    mem[128] = 256 * stor2[address(msg.sender)].field_8
                else:
                    mem[128] = stor2[address(msg.sender)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(msg.sender)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(msg.sender)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor2[address(msg.sender)].field_1) + 128] = 10
        mem[ceil32(stor2[address(msg.sender)].field_1) + 160] = 0x737570657241646d696e00000000000000000000000000000000000000000000
        if stor2[address(msg.sender)].field_1 <= 10:
            idx = 0
            while idx < stor2[address(msg.sender)].field_1:
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(msg.sender)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    revert with 0, 'only superAdmin can destroy Contract'
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(msg.sender)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    revert with 0, 'only superAdmin can destroy Contract'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 10:
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(msg.sender)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    revert with 0, 'only superAdmin can destroy Contract'
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(msg.sender)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    revert with 0, 'only superAdmin can destroy Contract'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor2[address(msg.sender)].field_1 < 10:
            revert with 0, 'only superAdmin can destroy Contract'
        if stor2[address(msg.sender)].field_1 > 10:
            revert with 0, 'only superAdmin can destroy Contract'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_4378c8cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if 1 == bool(stor11[arg1[all]]):
        return 0
    stor11[arg1[all]] = 1
    return 1
}

function addFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 != msg.sender:
        if address(stor7.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only super admin can add Fee Address'
    feeAddress = arg1
}

function sub_8e30f756(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor5 != msg.sender:
        if address(stor7.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only super admin can remove admin'
    if stor4[address(arg1)].field_0:
        if stor4[address(arg1)].field_0 == stor4[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor4[address(arg1)].field_0 = 0
        if 31 < stor4[address(arg1)].field_1:
            idx = 0
            while stor4[address(arg1)].field_1 + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[address(arg1)].field_0 == stor4[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor4[address(arg1)].field_0 = 0
        if 31 < stor4[address(arg1)].field_1:
            idx = 0
            while stor4[address(arg1)].field_1 + 31 / 32 > idx:
                stor4[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    return 1
}

function removeBank(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 != msg.sender:
        if address(stor7.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only super admin can remove admin'
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor3[address(arg1)].field_0 = 0
        if 31 < stor3[address(arg1)].field_1:
            idx = 0
            while stor3[address(arg1)].field_1 + 31 / 32 > idx:
                stor3[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor3[address(arg1)].field_0 = 0
        if 31 < stor3[address(arg1)].field_1:
            idx = 0
            while stor3[address(arg1)].field_1 + 31 / 32 > idx:
                stor3[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    return 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 != msg.sender:
        if address(stor7.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only super admin can remove admin'
    if stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_0 = 0
        if 31 < stor2[address(arg1)].field_1:
            idx = 0
            while stor2[address(arg1)].field_1 + 31 / 32 > idx:
                stor2[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_0 = 0
        if 31 < stor2[address(arg1)].field_1:
            idx = 0
            while stor2[address(arg1)].field_1 + 31 / 32 > idx:
                stor2[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    return 1
}

function sub_27d37960(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Super admin cant be Contract address'
    if stor5 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only super admin can add sub super admin'
    if stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_0 = 0
        stor2[address(arg1)].field_1 = 13
        stor2[address(arg1)].field_152 = 0x737562537570657241646d696e
        idx = 0
        while stor2[address(arg1)].field_1 + 31 / 32 > idx:
            stor2[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_0 = 0
        stor2[address(arg1)].field_1 = 13
        stor2[address(arg1)].field_152 = 0x737562537570657241646d696e
        idx = 0
        while stor2[address(arg1)].field_1 + 31 / 32 > idx:
            stor2[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor7.field_0) = address(arg1)
}

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8[address(arg1)].field_256:
        if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
            revert with 0, 34
    else:
        if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
            revert with 0, 34
    if stor8[address(arg1)].field_256:
        if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
            revert with 0, 34
        if stor8[address(arg1)].field_257:
            if 31 < stor8[address(arg1)].field_257:
                idx = 224
                s = 0
                while stor8[address(arg1)].field_257 + 192 > idx:
                    mem[idx + 32] = stor8[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
            revert with 0, 34
        if stor8[address(arg1)].field_257:
            if 31 < stor8[address(arg1)].field_257:
                idx = 224
                s = 0
                while stor8[address(arg1)].field_257 + 192 > idx:
                    mem[idx + 32] = stor8[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(stor8[address(arg1)].field_512)
}

function getWhitelistedUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12[address(arg1)].field_768:
        if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
            revert with 0, 34
    else:
        if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
            revert with 0, 34
    if stor12[address(arg1)].field_768:
        if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
            revert with 0, 34
        if stor12[address(arg1)].field_769:
            if 31 < stor12[address(arg1)].field_769:
                idx = 384
                s = 0
                while stor12[address(arg1)].field_769 + 352 > idx:
                    mem[idx + 32] = stor12[address(arg1)][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
            revert with 0, 34
        if stor12[address(arg1)].field_769:
            if 31 < stor12[address(arg1)].field_769:
                idx = 384
                s = 0
                while stor12[address(arg1)].field_769 + 352 > idx:
                    mem[idx + 32] = stor12[address(arg1)][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor12[address(arg1)].field_0, 
           bool(stor12[address(arg1)].field_168),
           stor12[address(arg1)].field_256 >= block.timestamp,
           stor12[address(arg1)].field_256,
           stor12[address(arg1)].field_512
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 != msg.sender:
        if address(stor7.field_0) != msg.sender:
            revert with 0, 'Only super admin can add admin'
    if stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_0 = 0
        stor2[address(arg1)].field_1 = 10
        stor2[address(arg1)].field_176 = 545238513591763296151918
        idx = 0
        while stor2[address(arg1)].field_1 + 31 / 32 > idx:
            stor2[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_0 = 0
        stor2[address(arg1)].field_1 = 10
        stor2[address(arg1)].field_176 = 545238513591763296151918
        idx = 0
        while stor2[address(arg1)].field_1 + 31 / 32 > idx:
            stor2[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if stor2[stor5].field_0:
        if stor2[stor5].field_0 == stor2[stor5].field_1 < 32:
            revert with 0, 34
        stor2[stor5].field_0 = 0
        idx = 0
        while stor2[stor5].field_1 + 31 / 32 > idx:
            stor2[stor5][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[stor5].field_0 == stor2[stor5].field_1 < 32:
            revert with 0, 34
        stor2[stor5].field_0 = 0
        idx = 0
        while stor2[stor5].field_1 + 31 / 32 > idx:
            stor2[stor5][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5 = arg1
    return 1
}

function addSuperAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Super admin cant be Contract address'
    if stor5 != msg.sender:
        revert with 0, 'Only super admin can add admin'
    if stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_0 = 0
        stor2[address(arg1)].field_1 = 10
        stor2[address(arg1)].field_176 = 545238513591763296151918
        idx = 0
        while stor2[address(arg1)].field_1 + 31 / 32 > idx:
            stor2[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        stor2[address(arg1)].field_0 = 0
        stor2[address(arg1)].field_1 = 10
        stor2[address(arg1)].field_176 = 545238513591763296151918
        idx = 0
        while stor2[address(arg1)].field_1 + 31 / 32 > idx:
            stor2[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    if stor2[stor5].field_0:
        if stor2[stor5].field_0 == stor2[stor5].field_1 < 32:
            revert with 0, 34
        stor2[stor5].field_0 = 0
        stor2[stor5].field_1 = 3
        stor2[stor5].field_232 = 6579574
        idx = 0
        while stor2[stor5].field_1 + 31 / 32 > idx:
            stor2[stor5][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor2[stor5].field_0 == stor2[stor5].field_1 < 32:
            revert with 0, 34
        stor2[stor5].field_0 = 0
        stor2[stor5].field_1 = 3
        stor2[stor5].field_232 = 6579574
        idx = 0
        while stor2[stor5].field_1 + 31 / 32 > idx:
            stor2[stor5][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5 = arg1
}

function sub_6ec55dbc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor12[arg1].field_768:
        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
            revert with 0, 34
        if stor12[arg1].field_768:
            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                revert with 0, 34
            if stor12[arg1].field_769:
                if 31 >= stor12[arg1].field_769:
                    mem[128] = 256 * stor12[arg1].field_776
                else:
                    mem[128] = stor12[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                revert with 0, 34
            if stor12[arg1].field_769:
                if 31 >= stor12[arg1].field_769:
                    mem[128] = 256 * stor12[arg1].field_776
                else:
                    mem[128] = stor12[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return bool(stor12[arg1].field_0), 
               stor12[arg1].field_0,
               bool(stor12[arg1].field_168),
               bool(stor12[arg1].field_176),
               stor12[arg1].field_256,
               stor12[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor12[arg1].field_769), data=mem[128 len ceil32(stor12[arg1].field_769)]),
               bool(stor12[arg1].field_1024)
    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
        revert with 0, 34
    if stor12[arg1].field_768:
        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
            revert with 0, 34
        if stor12[arg1].field_769:
            if 31 >= stor12[arg1].field_769:
                mem[128] = 256 * stor12[arg1].field_776
            else:
                mem[128] = stor12[arg1][3].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
            revert with 0, 34
        if stor12[arg1].field_769:
            if 31 >= stor12[arg1].field_769:
                mem[128] = 256 * stor12[arg1].field_776
            else:
                mem[128] = stor12[arg1][3].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return bool(stor12[arg1].field_0), 
           stor12[arg1].field_0,
           bool(stor12[arg1].field_168),
           bool(stor12[arg1].field_176),
           stor12[arg1].field_256,
           stor12[arg1].field_512,
           Array(len=stor12[arg1].field_768, data=mem[128 len ceil32(stor12[arg1].field_769)]),
           bool(stor12[arg1].field_1024)
}

function banks(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 0, 34
        if stor3[arg1].field_0:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 0, 34
            if stor3[arg1].field_1:
                if 31 < stor3[arg1].field_1:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[arg1].field_1), data=mem[128 len ceil32(stor3[arg1].field_1)])
                mem[128] = 256 * stor3[arg1].field_8
        else:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 0, 34
            if stor3[arg1].field_1:
                if 31 < stor3[arg1].field_1:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[arg1].field_1), data=mem[128 len ceil32(stor3[arg1].field_1)])
                mem[128] = 256 * stor3[arg1].field_8
        mem[ceil32(stor3[arg1].field_1) + 192 len ceil32(stor3[arg1].field_1)] = mem[128 len ceil32(stor3[arg1].field_1)]
        if ceil32(stor3[arg1].field_1) > stor3[arg1].field_1:
            mem[ceil32(stor3[arg1].field_1) + stor3[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3[arg1].field_1), data=mem[128 len ceil32(stor3[arg1].field_1)], mem[(2 * ceil32(stor3[arg1].field_1)) + 192 len 2 * ceil32(stor3[arg1].field_1)]), 
    if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
        revert with 0, 34
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 0, 34
        if stor3[arg1].field_1:
            if 31 < stor3[arg1].field_1:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)])
            mem[128] = 256 * stor3[arg1].field_8
    else:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 0, 34
        if stor3[arg1].field_1:
            if 31 < stor3[arg1].field_1:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)])
            mem[128] = 256 * stor3[arg1].field_8
    mem[ceil32(stor3[arg1].field_1) + 192 len ceil32(stor3[arg1].field_1)] = mem[128 len ceil32(stor3[arg1].field_1)]
    if ceil32(stor3[arg1].field_1) > stor3[arg1].field_1:
        mem[ceil32(stor3[arg1].field_1) + stor3[arg1].field_1 + 192] = 0
    return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)], mem[(2 * ceil32(stor3[arg1].field_1)) + 192 len 2 * ceil32(stor3[arg1].field_1)]), 
}

function owners(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 0, 34
        if stor4[arg1].field_0:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 0, 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        else:
            if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
                revert with 0, 34
            if stor4[arg1].field_1:
                if 31 < stor4[arg1].field_1:
                    mem[128] = stor4[arg1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)])
                mem[128] = 256 * stor4[arg1].field_8
        mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
        if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
            mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4[arg1].field_1), data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
    if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
        revert with 0, 34
    if stor4[arg1].field_0:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 0, 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    else:
        if stor4[arg1].field_0 == stor4[arg1].field_1 < 32:
            revert with 0, 34
        if stor4[arg1].field_1:
            if 31 < stor4[arg1].field_1:
                mem[128] = stor4[arg1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)])
            mem[128] = 256 * stor4[arg1].field_8
    mem[ceil32(stor4[arg1].field_1) + 192 len ceil32(stor4[arg1].field_1)] = mem[128 len ceil32(stor4[arg1].field_1)]
    if ceil32(stor4[arg1].field_1) > stor4[arg1].field_1:
        mem[ceil32(stor4[arg1].field_1) + stor4[arg1].field_1 + 192] = 0
    return Array(len=stor4[arg1].field_0, data=mem[128 len ceil32(stor4[arg1].field_1)], mem[(2 * ceil32(stor4[arg1].field_1)) + 192 len 2 * ceil32(stor4[arg1].field_1)]), 
}

function admins(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 0, 34
        if stor2[arg1].field_0:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 0, 34
            if stor2[arg1].field_1:
                if 31 < stor2[arg1].field_1:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)])
                mem[128] = 256 * stor2[arg1].field_8
        else:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 0, 34
            if stor2[arg1].field_1:
                if 31 < stor2[arg1].field_1:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)])
                mem[128] = 256 * stor2[arg1].field_8
        mem[ceil32(stor2[arg1].field_1) + 192 len ceil32(stor2[arg1].field_1)] = mem[128 len ceil32(stor2[arg1].field_1)]
        if ceil32(stor2[arg1].field_1) > stor2[arg1].field_1:
            mem[ceil32(stor2[arg1].field_1) + stor2[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)], mem[(2 * ceil32(stor2[arg1].field_1)) + 192 len 2 * ceil32(stor2[arg1].field_1)]), 
    if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
        revert with 0, 34
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 0, 34
        if stor2[arg1].field_1:
            if 31 < stor2[arg1].field_1:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)])
            mem[128] = 256 * stor2[arg1].field_8
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 0, 34
        if stor2[arg1].field_1:
            if 31 < stor2[arg1].field_1:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)])
            mem[128] = 256 * stor2[arg1].field_8
    mem[ceil32(stor2[arg1].field_1) + 192 len ceil32(stor2[arg1].field_1)] = mem[128 len ceil32(stor2[arg1].field_1)]
    if ceil32(stor2[arg1].field_1) > stor2[arg1].field_1:
        mem[ceil32(stor2[arg1].field_1) + stor2[arg1].field_1 + 192] = 0
    return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)], mem[(2 * ceil32(stor2[arg1].field_1)) + 192 len 2 * ceil32(stor2[arg1].field_1)]), 
}

function sub_0d501792(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor9[address(arg1)].field_256:
        if stor9[address(arg1)].field_256 == stor9[address(arg1)].field_257 < 32:
            revert with 0, 34
        if stor9[address(arg1)].field_256:
            if stor9[address(arg1)].field_256 == stor9[address(arg1)].field_257 < 32:
                revert with 0, 34
            if stor9[address(arg1)].field_257:
                if 31 < stor9[address(arg1)].field_257:
                    mem[128] = stor9[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while stor9[address(arg1)].field_257 + 96 > idx:
                        mem[idx + 32] = stor9[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[address(arg1)].field_257), data=mem[128 len ceil32(stor9[address(arg1)].field_257)])
                mem[128] = 256 * stor9[address(arg1)].field_264
        else:
            if stor9[address(arg1)].field_256 == stor9[address(arg1)].field_257 < 32:
                revert with 0, 34
            if stor9[address(arg1)].field_257:
                if 31 < stor9[address(arg1)].field_257:
                    mem[128] = stor9[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while stor9[address(arg1)].field_257 + 96 > idx:
                        mem[idx + 32] = stor9[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[address(arg1)].field_257), data=mem[128 len ceil32(stor9[address(arg1)].field_257)])
                mem[128] = 256 * stor9[address(arg1)].field_264
        mem[ceil32(stor9[address(arg1)].field_257) + 192 len ceil32(stor9[address(arg1)].field_257)] = mem[128 len ceil32(stor9[address(arg1)].field_257)]
        if ceil32(stor9[address(arg1)].field_257) > stor9[address(arg1)].field_257:
            mem[ceil32(stor9[address(arg1)].field_257) + stor9[address(arg1)].field_257 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9[address(arg1)].field_257), data=mem[128 len ceil32(stor9[address(arg1)].field_257)], mem[(2 * ceil32(stor9[address(arg1)].field_257)) + 192 len 2 * ceil32(stor9[address(arg1)].field_257)]), 
    if stor9[address(arg1)].field_256 == stor9[address(arg1)].field_257 < 32:
        revert with 0, 34
    if stor9[address(arg1)].field_256:
        if stor9[address(arg1)].field_256 == stor9[address(arg1)].field_257 < 32:
            revert with 0, 34
        if stor9[address(arg1)].field_257:
            if 31 < stor9[address(arg1)].field_257:
                mem[128] = stor9[address(arg1)][1].field_0
                idx = 128
                s = 0
                while stor9[address(arg1)].field_257 + 96 > idx:
                    mem[idx + 32] = stor9[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[address(arg1)].field_256, data=mem[128 len ceil32(stor9[address(arg1)].field_257)])
            mem[128] = 256 * stor9[address(arg1)].field_264
    else:
        if stor9[address(arg1)].field_256 == stor9[address(arg1)].field_257 < 32:
            revert with 0, 34
        if stor9[address(arg1)].field_257:
            if 31 < stor9[address(arg1)].field_257:
                mem[128] = stor9[address(arg1)][1].field_0
                idx = 128
                s = 0
                while stor9[address(arg1)].field_257 + 96 > idx:
                    mem[idx + 32] = stor9[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[address(arg1)].field_256, data=mem[128 len ceil32(stor9[address(arg1)].field_257)])
            mem[128] = 256 * stor9[address(arg1)].field_264
    mem[ceil32(stor9[address(arg1)].field_257) + 192 len ceil32(stor9[address(arg1)].field_257)] = mem[128 len ceil32(stor9[address(arg1)].field_257)]
    if ceil32(stor9[address(arg1)].field_257) > stor9[address(arg1)].field_257:
        mem[ceil32(stor9[address(arg1)].field_257) + stor9[address(arg1)].field_257 + 192] = 0
    return Array(len=stor9[address(arg1)].field_256, data=mem[128 len ceil32(stor9[address(arg1)].field_257)], mem[(2 * ceil32(stor9[address(arg1)].field_257)) + 192 len 2 * ceil32(stor9[address(arg1)].field_257)]), 
}

function getManagerRole(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8[address(arg1)].field_256:
        if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
            revert with 0, 34
        if stor8[address(arg1)].field_256:
            if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
                revert with 0, 34
            if stor8[address(arg1)].field_257:
                if 31 < stor8[address(arg1)].field_257:
                    mem[128] = stor8[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while stor8[address(arg1)].field_257 + 96 > idx:
                        mem[idx + 32] = stor8[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[address(arg1)].field_257), data=mem[128 len ceil32(stor8[address(arg1)].field_257)])
                mem[128] = 256 * stor8[address(arg1)].field_264
        else:
            if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
                revert with 0, 34
            if stor8[address(arg1)].field_257:
                if 31 < stor8[address(arg1)].field_257:
                    mem[128] = stor8[address(arg1)][1].field_0
                    idx = 128
                    s = 0
                    while stor8[address(arg1)].field_257 + 96 > idx:
                        mem[idx + 32] = stor8[address(arg1)][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[address(arg1)].field_257), data=mem[128 len ceil32(stor8[address(arg1)].field_257)])
                mem[128] = 256 * stor8[address(arg1)].field_264
        mem[ceil32(stor8[address(arg1)].field_257) + 192 len ceil32(stor8[address(arg1)].field_257)] = mem[128 len ceil32(stor8[address(arg1)].field_257)]
        if ceil32(stor8[address(arg1)].field_257) > stor8[address(arg1)].field_257:
            mem[ceil32(stor8[address(arg1)].field_257) + stor8[address(arg1)].field_257 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8[address(arg1)].field_257), data=mem[128 len ceil32(stor8[address(arg1)].field_257)], mem[(2 * ceil32(stor8[address(arg1)].field_257)) + 192 len 2 * ceil32(stor8[address(arg1)].field_257)]), 
    if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
        revert with 0, 34
    if stor8[address(arg1)].field_256:
        if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
            revert with 0, 34
        if stor8[address(arg1)].field_257:
            if 31 < stor8[address(arg1)].field_257:
                mem[128] = stor8[address(arg1)][1].field_0
                idx = 128
                s = 0
                while stor8[address(arg1)].field_257 + 96 > idx:
                    mem[idx + 32] = stor8[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[address(arg1)].field_256, data=mem[128 len ceil32(stor8[address(arg1)].field_257)])
            mem[128] = 256 * stor8[address(arg1)].field_264
    else:
        if stor8[address(arg1)].field_256 == stor8[address(arg1)].field_257 < 32:
            revert with 0, 34
        if stor8[address(arg1)].field_257:
            if 31 < stor8[address(arg1)].field_257:
                mem[128] = stor8[address(arg1)][1].field_0
                idx = 128
                s = 0
                while stor8[address(arg1)].field_257 + 96 > idx:
                    mem[idx + 32] = stor8[address(arg1)][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[address(arg1)].field_256, data=mem[128 len ceil32(stor8[address(arg1)].field_257)])
            mem[128] = 256 * stor8[address(arg1)].field_264
    mem[ceil32(stor8[address(arg1)].field_257) + 192 len ceil32(stor8[address(arg1)].field_257)] = mem[128 len ceil32(stor8[address(arg1)].field_257)]
    if ceil32(stor8[address(arg1)].field_257) > stor8[address(arg1)].field_257:
        mem[ceil32(stor8[address(arg1)].field_257) + stor8[address(arg1)].field_257 + 192] = 0
    return Array(len=stor8[address(arg1)].field_256, data=mem[128 len ceil32(stor8[address(arg1)].field_257)], mem[(2 * ceil32(stor8[address(arg1)].field_257)) + 192 len 2 * ceil32(stor8[address(arg1)].field_257)]), 
}

function isBank(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)].field_0:
            if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor3[address(arg1)].field_1:
                if 31 >= stor3[address(arg1)].field_1:
                    mem[128] = 256 * stor3[address(arg1)].field_8
                else:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor3[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor3[address(arg1)].field_1:
                if 31 >= stor3[address(arg1)].field_1:
                    mem[128] = 256 * stor3[address(arg1)].field_8
                else:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor3[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor3[address(arg1)].field_1) + 128] = 4
        mem[ceil32(stor3[address(arg1)].field_1) + 160] = 0x62616e6b00000000000000000000000000000000000000000000000000000000
        if stor3[address(arg1)].field_1 <= 4:
            idx = 0
            while idx < stor3[address(arg1)].field_1:
                if idx >= 4:
                    revert with 0, 50
                if idx >= stor3[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 4:
                    revert with 0, 50
                if idx >= stor3[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= stor3[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 4:
                    revert with 0, 50
                if idx >= stor3[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor3[address(arg1)].field_1 >= 4:
            if stor3[address(arg1)].field_1 <= 4:
                return 1
    else:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)].field_0:
            if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor3[address(arg1)].field_1:
                if 31 >= stor3[address(arg1)].field_1:
                    mem[128] = 256 * stor3[address(arg1)].field_8
                else:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor3[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor3[address(arg1)].field_1:
                if 31 >= stor3[address(arg1)].field_1:
                    mem[128] = 256 * stor3[address(arg1)].field_8
                else:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor3[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor3[address(arg1)].field_1) + 128] = 4
        mem[ceil32(stor3[address(arg1)].field_1) + 160] = 0x62616e6b00000000000000000000000000000000000000000000000000000000
        if stor3[address(arg1)].field_1 <= 4:
            idx = 0
            while idx < stor3[address(arg1)].field_1:
                if idx >= 4:
                    revert with 0, 50
                if idx >= stor3[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 4:
                    revert with 0, 50
                if idx >= stor3[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 4:
                if idx >= 4:
                    revert with 0, 50
                if idx >= stor3[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 4:
                    revert with 0, 50
                if idx >= stor3[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor3[address(arg1)].field_1 >= 4:
            if stor3[address(arg1)].field_1 <= 4:
                return 1
    return 0
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[address(arg1)].field_0:
        if stor4[address(arg1)].field_0 == stor4[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor4[address(arg1)].field_0:
            if stor4[address(arg1)].field_0 == stor4[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor4[address(arg1)].field_1:
                if 31 >= stor4[address(arg1)].field_1:
                    mem[128] = 256 * stor4[address(arg1)].field_8
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor4[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[address(arg1)].field_0 == stor4[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor4[address(arg1)].field_1:
                if 31 >= stor4[address(arg1)].field_1:
                    mem[128] = 256 * stor4[address(arg1)].field_8
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor4[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor4[address(arg1)].field_1) + 128] = 5
        mem[ceil32(stor4[address(arg1)].field_1) + 160] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
        if stor4[address(arg1)].field_1 <= 5:
            idx = 0
            while idx < stor4[address(arg1)].field_1:
                if idx >= 5:
                    revert with 0, 50
                if idx >= stor4[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 5:
                    revert with 0, 50
                if idx >= stor4[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 5:
                if idx >= 5:
                    revert with 0, 50
                if idx >= stor4[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 5:
                    revert with 0, 50
                if idx >= stor4[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor4[address(arg1)].field_1 >= 5:
            if stor4[address(arg1)].field_1 <= 5:
                return 1
    else:
        if stor4[address(arg1)].field_0 == stor4[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor4[address(arg1)].field_0:
            if stor4[address(arg1)].field_0 == stor4[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor4[address(arg1)].field_1:
                if 31 >= stor4[address(arg1)].field_1:
                    mem[128] = 256 * stor4[address(arg1)].field_8
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor4[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[address(arg1)].field_0 == stor4[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor4[address(arg1)].field_1:
                if 31 >= stor4[address(arg1)].field_1:
                    mem[128] = 256 * stor4[address(arg1)].field_8
                else:
                    mem[128] = stor4[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor4[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor4[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor4[address(arg1)].field_1) + 128] = 5
        mem[ceil32(stor4[address(arg1)].field_1) + 160] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
        if stor4[address(arg1)].field_1 <= 5:
            idx = 0
            while idx < stor4[address(arg1)].field_1:
                if idx >= 5:
                    revert with 0, 50
                if idx >= stor4[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 5:
                    revert with 0, 50
                if idx >= stor4[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 5:
                if idx >= 5:
                    revert with 0, 50
                if idx >= stor4[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 5:
                    revert with 0, 50
                if idx >= stor4[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor4[address(arg1)].field_1 >= 5:
            if stor4[address(arg1)].field_1 <= 5:
                return 1
    return 0
}

function sub_7f394e19(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor2[address(arg1)].field_0:
            if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_1:
                if 31 >= stor2[address(arg1)].field_1:
                    mem[128] = 256 * stor2[address(arg1)].field_8
                else:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_1:
                if 31 >= stor2[address(arg1)].field_1:
                    mem[128] = 256 * stor2[address(arg1)].field_8
                else:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor2[address(arg1)].field_1) + 128] = 13
        mem[ceil32(stor2[address(arg1)].field_1) + 160] = 0x737562537570657241646d696e00000000000000000000000000000000000000
        if stor2[address(arg1)].field_1 <= 13:
            idx = 0
            while idx < stor2[address(arg1)].field_1:
                if idx >= 13:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 13:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 13:
                if idx >= 13:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 13:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor2[address(arg1)].field_1 >= 13:
            if stor2[address(arg1)].field_1 <= 13:
                return 1
    else:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor2[address(arg1)].field_0:
            if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_1:
                if 31 >= stor2[address(arg1)].field_1:
                    mem[128] = 256 * stor2[address(arg1)].field_8
                else:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_1:
                if 31 >= stor2[address(arg1)].field_1:
                    mem[128] = 256 * stor2[address(arg1)].field_8
                else:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor2[address(arg1)].field_1) + 128] = 13
        mem[ceil32(stor2[address(arg1)].field_1) + 160] = 0x737562537570657241646d696e00000000000000000000000000000000000000
        if stor2[address(arg1)].field_1 <= 13:
            idx = 0
            while idx < stor2[address(arg1)].field_1:
                if idx >= 13:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 13:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 13:
                if idx >= 13:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 13:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor2[address(arg1)].field_1 >= 13:
            if stor2[address(arg1)].field_1 <= 13:
                return 1
    return 0
}

function isSuperAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)].field_0:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor2[address(arg1)].field_0:
            if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_1:
                if 31 >= stor2[address(arg1)].field_1:
                    mem[128] = 256 * stor2[address(arg1)].field_8
                else:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_1:
                if 31 >= stor2[address(arg1)].field_1:
                    mem[128] = 256 * stor2[address(arg1)].field_8
                else:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor2[address(arg1)].field_1) + 128] = 10
        mem[ceil32(stor2[address(arg1)].field_1) + 160] = 0x737570657241646d696e00000000000000000000000000000000000000000000
        if stor2[address(arg1)].field_1 <= 10:
            idx = 0
            while idx < stor2[address(arg1)].field_1:
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 10:
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor2[address(arg1)].field_1 >= 10:
            if stor2[address(arg1)].field_1 <= 10:
                return 1
    else:
        if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor2[address(arg1)].field_0:
            if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_1:
                if 31 >= stor2[address(arg1)].field_1:
                    mem[128] = 256 * stor2[address(arg1)].field_8
                else:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[address(arg1)].field_0 == stor2[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor2[address(arg1)].field_1:
                if 31 >= stor2[address(arg1)].field_1:
                    mem[128] = 256 * stor2[address(arg1)].field_8
                else:
                    mem[128] = stor2[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor2[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor2[address(arg1)].field_1) + 128] = 10
        mem[ceil32(stor2[address(arg1)].field_1) + 160] = 0x737570657241646d696e00000000000000000000000000000000000000000000
        if stor2[address(arg1)].field_1 <= 10:
            idx = 0
            while idx < stor2[address(arg1)].field_1:
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 10:
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 10:
                    revert with 0, 50
                if idx >= stor2[address(arg1)].field_1:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor2[address(arg1)].field_1 >= 10:
            if stor2[address(arg1)].field_1 <= 10:
                return 1
    return 0
}

function userType(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12[address(arg1)].field_768:
        if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
            revert with 0, 34
        if stor12[address(arg1)].field_768:
            if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
                revert with 0, 34
            if stor12[address(arg1)].field_769:
                if 31 >= stor12[address(arg1)].field_769:
                    mem[128] = 256 * stor12[address(arg1)].field_776
                else:
                    mem[128] = stor12[address(arg1)][3].field_0
                    idx = 128
                    s = 0
                    while stor12[address(arg1)].field_769 + 96 > idx:
                        mem[idx + 32] = stor12[address(arg1)][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
                revert with 0, 34
            if stor12[address(arg1)].field_769:
                if 31 >= stor12[address(arg1)].field_769:
                    mem[128] = 256 * stor12[address(arg1)].field_776
                else:
                    mem[128] = stor12[address(arg1)][3].field_0
                    idx = 128
                    s = 0
                    while stor12[address(arg1)].field_769 + 96 > idx:
                        mem[idx + 32] = stor12[address(arg1)][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor12[address(arg1)].field_769) + 128] = 7
        mem[ceil32(stor12[address(arg1)].field_769) + 160] = 'Premium' << 200
        if stor12[address(arg1)].field_769 <= 7:
            idx = 0
            while idx < stor12[address(arg1)].field_769:
                if idx >= 7:
                    revert with 0, 50
                if idx >= stor12[address(arg1)].field_769:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 7:
                    revert with 0, 50
                if idx >= stor12[address(arg1)].field_769:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 7:
                if idx >= 7:
                    revert with 0, 50
                if idx >= stor12[address(arg1)].field_769:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 7:
                    revert with 0, 50
                if idx >= stor12[address(arg1)].field_769:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor12[address(arg1)].field_769 >= 7:
            if stor12[address(arg1)].field_769 <= 7:
                return 1
    else:
        if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
            revert with 0, 34
        if stor12[address(arg1)].field_768:
            if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
                revert with 0, 34
            if stor12[address(arg1)].field_769:
                if 31 >= stor12[address(arg1)].field_769:
                    mem[128] = 256 * stor12[address(arg1)].field_776
                else:
                    mem[128] = stor12[address(arg1)][3].field_0
                    idx = 128
                    s = 0
                    while stor12[address(arg1)].field_769 + 96 > idx:
                        mem[idx + 32] = stor12[address(arg1)][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor12[address(arg1)].field_768 == stor12[address(arg1)].field_769 < 32:
                revert with 0, 34
            if stor12[address(arg1)].field_769:
                if 31 >= stor12[address(arg1)].field_769:
                    mem[128] = 256 * stor12[address(arg1)].field_776
                else:
                    mem[128] = stor12[address(arg1)][3].field_0
                    idx = 128
                    s = 0
                    while stor12[address(arg1)].field_769 + 96 > idx:
                        mem[idx + 32] = stor12[address(arg1)][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor12[address(arg1)].field_769) + 128] = 7
        mem[ceil32(stor12[address(arg1)].field_769) + 160] = 'Premium' << 200
        if stor12[address(arg1)].field_769 <= 7:
            idx = 0
            while idx < stor12[address(arg1)].field_769:
                if idx >= 7:
                    revert with 0, 50
                if idx >= stor12[address(arg1)].field_769:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 7:
                    revert with 0, 50
                if idx >= stor12[address(arg1)].field_769:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < 7:
                if idx >= 7:
                    revert with 0, 50
                if idx >= stor12[address(arg1)].field_769:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) < 0:
                    return 0
                if idx >= 7:
                    revert with 0, 50
                if idx >= stor12[address(arg1)].field_769:
                    revert with 0, 50
                if Mask(8, 248, mem[idx + 128]) > 0:
                    return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if stor12[address(arg1)].field_769 >= 7:
            if stor12[address(arg1)].field_769 <= 7:
                return 1
    return 0
}



}
