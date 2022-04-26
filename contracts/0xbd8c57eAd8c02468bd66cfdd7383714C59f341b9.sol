contract main {




// =====================  Runtime code  =====================


#
#  - getData(address arg1)
#  - verifyAudit(address arg1, string arg2, string arg3, string arg4, string arg5)
#
const platformTokenETH = 0xf063fe1ab7a291c5d06a86e14730b00bf24cb589

const platformTokenBSC = 0x4f73a09e2eb410205be256054794fb452f0d245


address team_accAddress;
uint256 minPlatTokenReq;
uint8 stor2; offset 160
uint8 stor2; offset 168
address deadAddress;
uint256 verifyFees;
address owner;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of address auditedBy;
mapping of struct stor8;
mapping of uint8 stor9;
mapping of struct stor10;
mapping of struct stor11;
mapping of struct stor12;
mapping of struct stor13;
mapping of struct stor14;
mapping of uint8 stor15;
mapping of uint256 auditorNumbers;
mapping of address auditorTotalList;
mapping of address allAuditTokens;
uint256 auditsverifiedNumber;

function AuditorsAdded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function AuditorTotalList(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return auditorTotalList[arg1][arg2]
}

function dead() {
    return deadAddress
}

function burn() {
    return bool(uint8(stor2.field_160))
}

function verifiedAlready(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function minPlatTokenReq() {
    return minPlatTokenReq
}

function AuditVerfied(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function verifyFees() {
    return verifyFees
}

function auditedBy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return auditedBy[arg1]
}

function team_acc() {
    return team_accAddress
}

function owner() {
    return owner
}

function feesEnabled() {
    return bool(uint8(stor2.field_168))
}

function auditsverifiedNumber() {
    return auditsverifiedNumber
}

function AuditorNumbers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return auditorNumbers[arg1]
}

function Auditors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function AllAuditTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    return allAuditTokens[arg1]
}

function _fallback() payable {
    revert
}

function enableFees() {
    require msg.sender == owner
    uint8(stor2.field_168) = 1
}

function enableBurn() {
    require msg.sender == owner
    uint8(stor2.field_160) = 1
}

function disableBurn() {
    require msg.sender == owner
    uint8(stor2.field_160) = 0
}

function disableFees() {
    require msg.sender == owner
    uint8(stor2.field_168) = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changeFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    verifyFees = arg1
}

function changeSaleRequired(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minPlatTokenReq = arg1
}

function updateDeadAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    deadAddress = arg1
}

function removeAuditVerified(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor9[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function enableAuditor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not stor6[address(arg1)]:
        revert with 0, 'auditor doesnot exist!'
    if stor5[address(arg1)]:
        revert with 0, 'Auditor already enabled'
    stor5[address(arg1)] = 1
}

function disableAuditor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not stor6[address(arg1)]:
        revert with 0, 'auditor doesnot exist!'
    if not stor5[address(arg1)]:
        revert with 0, 'Auditor already disabled'
    stor5[address(arg1)] = 0
}

function getAllAuditTokens() {
    if auditsverifiedNumber > test266151307():
        revert with 0, 65
    mem[96] = auditsverifiedNumber
    mem[64] = (32 * auditsverifiedNumber) + 128
    if auditsverifiedNumber:
        mem[128 len 32 * auditsverifiedNumber] = call.data[calldata.size len 32 * auditsverifiedNumber]
    idx = 0
    while idx < auditsverifiedNumber:
        mem[0] = idx
        mem[32] = 18
        if idx >= auditsverifiedNumber:
            revert with 0, 50
        mem[(32 * idx) + 128] = allAuditTokens[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * auditsverifiedNumber) + 128] = 32
    mem[(32 * auditsverifiedNumber) + 160] = auditsverifiedNumber
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < auditsverifiedNumber:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * auditsverifiedNumber) + -mem[64] + 192
}

function RemoveFromAuditorsInMass(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        require msg.sender == owner
        if not stor6[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'auditor doesnot exist!'
        if not stor5[address(mem[(32 * idx) + 128])]:
            revert with 0, 'Auditor already disabled'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[address(mem[(32 * idx) + 128])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getTotalTokensByAuditor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if auditorNumbers[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = auditorNumbers[address(arg1)]
    mem[64] = (32 * auditorNumbers[address(arg1)]) + 128
    if auditorNumbers[address(arg1)]:
        mem[128 len 32 * auditorNumbers[address(arg1)]] = call.data[calldata.size len 32 * auditorNumbers[address(arg1)]]
    idx = 0
    while idx < auditorNumbers[address(arg1)]:
        if idx >= auditorNumbers[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = auditorTotalList[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 16
        idx = idx + 1
        continue 
    mem[(32 * auditorNumbers[address(arg1)]) + 128] = 32
    mem[(32 * auditorNumbers[address(arg1)]) + 160] = auditorNumbers[address(arg1)]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < auditorNumbers[address(arg1)]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * auditorNumbers[address(arg1)]) + -mem[64] + 192
}

function updateAuditorName(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    if bool(stor14[address(arg1)].field_0):
        if bool(stor14[address(arg1)].field_0) == uint255(stor14[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor14[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor14[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor14[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14[address(arg1)].field_0) == stor14[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor14[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[address(arg1)].field_0 = 0
            idx = 0
            while stor14[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor14[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function changeAuditorName(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    if not stor6[address(arg1)]:
        revert with 0, 'auditor doesn't exist'
    if bool(stor14[address(arg1)].field_0):
        if bool(stor14[address(arg1)].field_0) == uint255(stor14[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor14[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor14[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor14[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14[address(arg1)].field_0) == stor14[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor14[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[address(arg1)].field_0 = 0
            idx = 0
            while stor14[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor14[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function addToAuditors(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    if stor5[address(arg1)]:
        revert with 0, 'auditor already exist'
    stor5[address(arg1)] = 1
    stor6[address(arg1)] = 1
    if bool(stor14[address(arg1)].field_0):
        if bool(stor14[address(arg1)].field_0) == uint255(stor14[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor14[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor14[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor14[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14[address(arg1)].field_0) == stor14[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor14[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor14[address(arg1)].field_0 = 0
            idx = 0
            while stor14[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor14[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function updateScore(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor5[msg.sender]:
        revert with 0, 'NOT auditor'
    if auditedBy[address(arg1)] != msg.sender:
        revert with 0, 'Incorrect Auditor'
    if not stor15[address(arg1)]:
        revert with 0, 'token not audit verified yet'
    if bool(stor13[address(arg1)].field_0):
        if bool(stor13[address(arg1)].field_0) == uint255(stor13[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor13[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor13[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor13[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor13[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13[address(arg1)].field_0) == stor13[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor13[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor13[address(arg1)].field_0 = 0
            idx = 0
            while stor13[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor13[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function updateComment(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor5[msg.sender]:
        revert with 0, 'NOT auditor'
    if auditedBy[address(arg1)] != msg.sender:
        revert with 0, 'Incorrect Auditor'
    if not stor15[address(arg1)]:
        revert with 0, 'token not audit verified yet'
    if bool(stor10[address(arg1)].field_0):
        if bool(stor10[address(arg1)].field_0) == uint255(stor10[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor10[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor10[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10[address(arg1)].field_0) == stor10[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor10[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor10[address(arg1)].field_0 = 0
            idx = 0
            while stor10[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor10[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function updateComment2(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor5[msg.sender]:
        revert with 0, 'NOT auditor'
    if auditedBy[address(arg1)] != msg.sender:
        revert with 0, 'Incorrect Auditor'
    if not stor15[address(arg1)]:
        revert with 0, 'token not audit verified yet'
    if bool(stor12[address(arg1)].field_0):
        if bool(stor12[address(arg1)].field_0) == uint255(stor12[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor12[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor12[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12[address(arg1)].field_0) == stor12[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[address(arg1)].field_0 = 0
            idx = 0
            while stor12[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor12[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function updateComment1(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor5[msg.sender]:
        revert with 0, 'NOT auditor'
    if auditedBy[address(arg1)] != msg.sender:
        revert with 0, 'Incorrect Auditor'
    if not stor15[address(arg1)]:
        revert with 0, 'token not audit verified yet'
    if bool(stor11[address(arg1)].field_0):
        if bool(stor11[address(arg1)].field_0) == uint255(stor11[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor11[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[address(arg1)].field_0 = 0
            idx = 0
            while (uint255(stor11[address(arg1)].field_0) * 0.5) + 31 / 32 > idx:
                stor11[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11[address(arg1)].field_0) == stor11[address(arg1)].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor11[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor11[address(arg1)].field_0 = 0
            idx = 0
            while stor11[address(arg1)].field_1 % 128 + 31 / 32 > idx:
                stor11[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function auditedByName(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8[arg1].field_0):
            if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8[arg1].field_0):
                if 31 < uint255(stor8[arg1].field_0) * 0.5:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
        else:
            if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor8[arg1].field_1 % 128:
                if 31 < stor8[arg1].field_1 % 128:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor8[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor8[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)]), 
    if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8[arg1].field_0):
            if 31 < uint255(stor8[arg1].field_0) * 0.5:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
    else:
        if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor8[arg1].field_1 % 128:
            if 31 < stor8[arg1].field_1 % 128:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
    mem[ceil32(stor8[arg1].field_1 % 128) + 192 len ceil32(stor8[arg1].field_1 % 128)] = mem[128 len ceil32(stor8[arg1].field_1 % 128)]
    if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
        mem[ceil32(stor8[arg1].field_1 % 128) + stor8[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)], mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor8[arg1].field_1 % 128)]), 
}

function AuditorName(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor14[arg1].field_0):
            if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14[arg1].field_0):
                if 31 < uint255(stor14[arg1].field_0) * 0.5:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
        else:
            if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor14[arg1].field_1 % 128:
                if 31 < stor14[arg1].field_1 % 128:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
        mem[ceil32(uint255(stor14[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor14[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor14[arg1].field_0) * 0.5) > uint255(stor14[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor14[arg1].field_0) * 0.5) + (uint255(stor14[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor14[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor14[arg1].field_0) * 0.5)]), 
    if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14[arg1].field_0):
            if 31 < uint255(stor14[arg1].field_0) * 0.5:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
    else:
        if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor14[arg1].field_1 % 128:
            if 31 < stor14[arg1].field_1 % 128:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
    mem[ceil32(stor14[arg1].field_1 % 128) + 192 len ceil32(stor14[arg1].field_1 % 128)] = mem[128 len ceil32(stor14[arg1].field_1 % 128)]
    if ceil32(stor14[arg1].field_1 % 128) > stor14[arg1].field_1 % 128:
        mem[ceil32(stor14[arg1].field_1 % 128) + stor14[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)], mem[(2 * ceil32(stor14[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor14[arg1].field_1 % 128)]), 
}

function auditorScore(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor13[arg1].field_0):
            if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor13[arg1].field_0):
                if 31 < uint255(stor13[arg1].field_0) * 0.5:
                    mem[128] = stor13[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor13[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        else:
            if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor13[arg1].field_1 % 128:
                if 31 < stor13[arg1].field_1 % 128:
                    mem[128] = stor13[arg1].field_0
                    idx = 128
                    s = 0
                    while stor13[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        mem[ceil32(uint255(stor13[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor13[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor13[arg1].field_0) * 0.5) > uint255(stor13[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor13[arg1].field_0) * 0.5) + (uint255(stor13[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor13[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor13[arg1].field_0) * 0.5)]), 
    if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor13[arg1].field_0):
            if 31 < uint255(stor13[arg1].field_0) * 0.5:
                mem[128] = stor13[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor13[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    else:
        if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor13[arg1].field_1 % 128:
            if 31 < stor13[arg1].field_1 % 128:
                mem[128] = stor13[arg1].field_0
                idx = 128
                s = 0
                while stor13[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    mem[ceil32(stor13[arg1].field_1 % 128) + 192 len ceil32(stor13[arg1].field_1 % 128)] = mem[128 len ceil32(stor13[arg1].field_1 % 128)]
    if ceil32(stor13[arg1].field_1 % 128) > stor13[arg1].field_1 % 128:
        mem[ceil32(stor13[arg1].field_1 % 128) + stor13[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)], mem[(2 * ceil32(stor13[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor13[arg1].field_1 % 128)]), 
}

function auditorComment(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10[arg1].field_0):
            if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10[arg1].field_0):
                if 31 < uint255(stor10[arg1].field_0) * 0.5:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor10[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_0), data=mem[128 len ceil32(uint255(stor10[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
        else:
            if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor10[arg1].field_1 % 128:
                if 31 < stor10[arg1].field_1 % 128:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_0), data=mem[128 len ceil32(uint255(stor10[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
        mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor10[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor10[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor10[arg1].field_0) * 0.5) > uint255(stor10[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor10[arg1].field_0) * 0.5) + (uint255(stor10[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10[arg1].field_0), data=mem[128 len ceil32(uint255(stor10[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor10[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor10[arg1].field_0) * 0.5)]), 
    if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_0):
            if 31 < uint255(stor10[arg1].field_0) * 0.5:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor10[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor10[arg1].field_1 % 128:
            if 31 < stor10[arg1].field_1 % 128:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
    mem[ceil32(stor10[arg1].field_1 % 128) + 192 len ceil32(stor10[arg1].field_1 % 128)] = mem[128 len ceil32(stor10[arg1].field_1 % 128)]
    if ceil32(stor10[arg1].field_1 % 128) > stor10[arg1].field_1 % 128:
        mem[ceil32(stor10[arg1].field_1 % 128) + stor10[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)], mem[(2 * ceil32(stor10[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor10[arg1].field_1 % 128)]), 
}

function auditorComment2(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor12[arg1].field_0):
            if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12[arg1].field_0):
                if 31 < uint255(stor12[arg1].field_0) * 0.5:
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor12[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_0), data=mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        else:
            if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor12[arg1].field_1 % 128:
                if 31 < stor12[arg1].field_1 % 128:
                    mem[128] = stor12[arg1].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor12[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12[arg1].field_0), data=mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
        mem[ceil32(uint255(stor12[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor12[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor12[arg1].field_0) * 0.5) > uint255(stor12[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor12[arg1].field_0) * 0.5) + (uint255(stor12[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12[arg1].field_0), data=mem[128 len ceil32(uint255(stor12[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor12[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor12[arg1].field_0) * 0.5)]), 
    if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor12[arg1].field_0):
        if bool(stor12[arg1].field_0) == uint255(stor12[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12[arg1].field_0):
            if 31 < uint255(stor12[arg1].field_0) * 0.5:
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor12[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    else:
        if bool(stor12[arg1].field_0) == stor12[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor12[arg1].field_1 % 128:
            if 31 < stor12[arg1].field_1 % 128:
                mem[128] = stor12[arg1].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor12[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor12[arg1].field_8)
    mem[ceil32(stor12[arg1].field_1 % 128) + 192 len ceil32(stor12[arg1].field_1 % 128)] = mem[128 len ceil32(stor12[arg1].field_1 % 128)]
    if ceil32(stor12[arg1].field_1 % 128) > stor12[arg1].field_1 % 128:
        mem[ceil32(stor12[arg1].field_1 % 128) + stor12[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor12[arg1].field_0 % 128, data=mem[128 len ceil32(stor12[arg1].field_1 % 128)], mem[(2 * ceil32(stor12[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor12[arg1].field_1 % 128)]), 
}

function auditorComment1(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor11[arg1].field_0):
        if bool(stor11[arg1].field_0) == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11[arg1].field_0):
            if bool(stor11[arg1].field_0) == uint255(stor11[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_0):
                if 31 < uint255(stor11[arg1].field_0) * 0.5:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
        else:
            if bool(stor11[arg1].field_0) == stor11[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor11[arg1].field_1 % 128:
                if 31 < stor11[arg1].field_1 % 128:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
        mem[ceil32(uint255(stor11[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor11[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor11[arg1].field_0) * 0.5) > uint255(stor11[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor11[arg1].field_0) * 0.5) + (uint255(stor11[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)]), 
    if bool(stor11[arg1].field_0) == stor11[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor11[arg1].field_0):
        if bool(stor11[arg1].field_0) == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_0):
            if 31 < uint255(stor11[arg1].field_0) * 0.5:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0 % 128, data=mem[128 len ceil32(stor11[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
    else:
        if bool(stor11[arg1].field_0) == stor11[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor11[arg1].field_1 % 128:
            if 31 < stor11[arg1].field_1 % 128:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0 % 128, data=mem[128 len ceil32(stor11[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
    mem[ceil32(stor11[arg1].field_1 % 128) + 192 len ceil32(stor11[arg1].field_1 % 128)] = mem[128 len ceil32(stor11[arg1].field_1 % 128)]
    if ceil32(stor11[arg1].field_1 % 128) > stor11[arg1].field_1 % 128:
        mem[ceil32(stor11[arg1].field_1 % 128) + stor11[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor11[arg1].field_0 % 128, data=mem[128 len ceil32(stor11[arg1].field_1 % 128)], mem[(2 * ceil32(stor11[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor11[arg1].field_1 % 128)]), 
}

function AddToAuditorsInMass(address[] arg1, string[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        require cd[s] <= test266151307()
        require arg2 + cd[s] + 67 < calldata.size
        if cd[(arg2 + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _44 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + 36)])) + 1
        mem[_44] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_44 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_44 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _44
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == owner
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        require msg.sender == owner
        if stor5[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'auditor already exist'
        mem[0] = mem[(32 * idx) + 140 len 20]
        stor5[address(mem[(32 * idx) + 128])] = 1
        stor6[address(mem[(32 * idx) + 128])] = 1
        mem[32] = 14
        _70 = mem[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]]
        if bool(stor14[address(mem[(32 * idx) + 128])].field_0):
            if bool(stor14[address(mem[(32 * idx) + 128])].field_0) == uint255(stor14[address(mem[(32 * idx) + 128])].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[0] = sha3(address(mem[(32 * idx) + 128]), 14)
            if not _70:
                stor14[address(mem[(32 * idx) + 128])].field_0 = 0
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 14))
                while sha3(sha3(address(mem[(32 * idx) + 128]), 14)) + ((uint255(stor14[address(mem[(32 * idx) + 128])].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor14[address(mem[(32 * idx) + 128])].field_0 = (2 * _70) + 1
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 14))
                t = mem[(32 * idx) + ceil32(32 * arg1.length) + 129] + 32
                while mem[(32 * idx) + ceil32(32 * arg1.length) + 129] + _70 + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 14)) + (Mask(251, 0, _70 + 31) >> 5)
                while sha3(sha3(address(mem[(32 * idx) + 128]), 14)) + ((uint255(stor14[address(mem[(32 * idx) + 128])].field_0) * 0.5) + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        else:
            if bool(stor14[address(mem[(32 * idx) + 128])].field_0) == stor14[address(mem[(32 * idx) + 128])].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(address(mem[(32 * idx) + 128]), 14)
            if not _70:
                stor14[address(mem[(32 * idx) + 128])].field_0 = 0
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 14))
                while sha3(sha3(address(mem[(32 * idx) + 128]), 14)) + (stor14[address(mem[(32 * idx) + 128])].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                stor14[address(mem[(32 * idx) + 128])].field_0 = (2 * _70) + 1
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 14))
                t = mem[(32 * idx) + ceil32(32 * arg1.length) + 129] + 32
                while mem[(32 * idx) + ceil32(32 * arg1.length) + 129] + _70 + 32 > t:
                    stor[s] = mem[t]
                    s = s + 1
                    t = t + 32
                    continue 
                s = sha3(sha3(address(mem[(32 * idx) + 128]), 14)) + (Mask(251, 0, _70 + 31) >> 5)
                while sha3(sha3(address(mem[(32 * idx) + 128]), 14)) + (stor14[address(mem[(32 * idx) + 128])].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
