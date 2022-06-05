contract main {




// =====================  Runtime code  =====================


#
#  - sub_9900938f(?)
#  - sub_bdd99146(?)
#
const sub_43bda73e(?) = 0x1522c5d2f2bfcb094489103faf91c9c412f68e706657062fbe6788935cb83784

const version = 1000010

const poolType = 3

const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9


array of struct roleAdmin;
uint8 paused;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_ae61fd8dAddress;
uint256 totalCap;
uint32 stor213;
address sub_7199ed2bAddress;
uint256 stor213;
uint256 sub_f2f9c91f;
uint32 stor215;
address sub_b0d751dcAddress;
uint256 stor215;
uint256 sub_dae5beac;
uint8 sub_eddfaff1;
uint8 sub_24d65286; offset 8
uint8 sub_e7c0dede; offset 16
uint8 sub_c8ff4b64; offset 24
uint8 sub_c83e98ed; offset 192
uint8 sub_bc333410; offset 200
uint8 sub_8451fcf0; offset 208
uint8 sub_260bb508; offset 216
uint32 stor217; offset 224
uint64 stor217; offset 208
address sub_97041ae1Address; offset 32
uint256 stor217; offset 32
uint256 lockedPremium;
uint256 mcr;
uint256 sub_7fd74ea2;
uint64 sub_c9e582f1;
uint256 stor222;
mapping of uint64 stor223;
uint256 sub_92723d3d;
uint32 sub_7d5c567d;
address stor235; offset 32
uint256 lockupPeriod;
mapping of uint256 stor237;

function name() payable {
    return name[0 len name.length]
}

function totalCap() payable {
    return totalCap
}

function totalSupply() payable {
    return totalSupply
}

function sub_190b8dc5(?) payable {
    return sub_ae61fd8dAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_24d65286(?) payable {
    return sub_24d65286
}

function sub_260bb508(?) payable {
    return sub_260bb508
}

function decimals() payable {
    return decimals
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7199ed2b(?) payable {
    return address(sub_7199ed2bAddress)
}

function lockedPremium() payable {
    return lockedPremium
}

function sub_7d5c567d(?) payable {
    return sub_7d5c567d
}

function sub_7fd74ea2(?) payable {
    return sub_7fd74ea2
}

function sub_8451fcf0(?) payable {
    return sub_8451fcf0
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function sub_92723d3d(?) payable {
    return sub_92723d3d
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_97041ae1(?) payable {
    return sub_97041ae1Address
}

function sub_ae61fd8d(?) payable {
    return sub_ae61fd8dAddress
}

function sub_b0d751dc(?) payable {
    return address(sub_b0d751dcAddress)
}

function mcr() payable {
    return mcr
}

function sub_bc333410(?) payable {
    return sub_bc333410
}

function sub_c83e98ed(?) payable {
    return sub_c83e98ed
}

function sub_c8ff4b64(?) payable {
    return sub_c8ff4b64
}

function sub_c9e582f1(?) payable {
    return sub_c9e582f1
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_dae5beac(?) payable {
    return sub_dae5beac
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e7c0dede(?) payable {
    return sub_e7c0dede
}

function sub_eddfaff1(?) payable {
    return sub_eddfaff1
}

function lockupPeriod() payable {
    return lockupPeriod
}

function sub_f2f9c91f(?) payable {
    return sub_f2f9c91f
}

function _fallback() payable {
    revert
}

function getTotalValueLocked() payable {
    return totalCap, totalSupply, lockedPremium
}

function getPoolStat() payable {
    return totalCap, totalSupply, lockedPremium, mcr, sub_7fd74ea2, sub_c9e582f1, stor222
}

function setLockupPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    lockupPeriod = arg1
}

function pause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_816f5fe6(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if not arg1:
        revert with 0, 'Invalid address'
    address(sub_7199ed2bAddress) = arg1
}

function sub_cddfdaae(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if not arg1:
        revert with 0, 'Invalid address'
    address(sub_b0d751dcAddress) = arg1
}

function sub_4dfe3dd1(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if arg2 <= 0:
        revert with 0, 'Invalid denom'
    sub_eddfaff1 = arg1
    sub_24d65286 = arg2
}

function getWriterDataExtended(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockupPeriod + stor237[address(arg1)] < stor237[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return balanceOf[address(arg1)], stor237[address(arg1)], lockupPeriod + stor237[address(arg1)]
}

function sub_6617634c(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if arg2 <= 0:
        revert with 0, 'Invalid denom'
    sub_8451fcf0 = arg1
    sub_260bb508 = arg2
    uint32(stor217.field_224) = 0
}

function sub_0278b4e6(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if arg2 <= 0:
        revert with 0, 'Invalid denom'
    sub_e7c0dede = arg1
    sub_c8ff4b64 = arg2
    Mask(224, 0, stor217.field_32) = 0
}

function sub_6f105b5d(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'eCaller is not the Admin'
    if arg2 <= 0:
        revert with 0, 'Invalid denom'
    sub_c83e98ed = arg1
    sub_bc333410 = arg2
    stor217.field_208 % 281474976710656 = 0
}

function sub_d7256b4c(?) payable {
    require ext_code.size(sub_ae61fd8dAddress)
    staticcall sub_ae61fd8dAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 10^ext_call.return_data[31 len 1]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                57,
                0x647374616e64617264207769746864726177206d6574686f642064697361626c65642e20506c656173652075736520616e6f74686572206f6e,
                mem[221 len 7]
}

function recoverSigner(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function splitSignature(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 65:
        revert with 0, 'Incorrect signature length'
    _3 = mem[128]
    _4 = mem[160]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = _3
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           _4
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6d416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2945524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
        revert with 0, 'Withdrawal is locked up'
    require ext_code.size(stor235)
    staticcall stor235.0x5ea308d8 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                    mem[204 len 24]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if stor235 != msg.sender:
        revert with 0, 'Caller is not the SCProtections'
    if arg2 > lockedPremium:
        revert with 0, 'SafeMath: subtraction overflow'
    lockedPremium -= arg2
    if arg2 + totalCap < totalCap:
        revert with 0, 'SafeMath: addition overflow'
    totalCap += arg2
    emit 0xca76d38c: arg2, arg1
    if arg3 > totalCap:
        revert with 0, 'SafeMath: subtraction overflow'
    totalCap -= arg3
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call sub_ae61fd8dAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg4) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg4) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0xf4d63390: arg3, arg4, arg1
    return 1
}

function sub_470c80e5(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Operator'
    if arg1 > sub_dae5beac:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e416d6f756e7420746f206265206c657373207468656e2065787465726e616c20636f6d6d697373696f6e20617661696c61626c6520746f2077697468647261
    sub_dae5beac -= arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor215), uint32(stor215), Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call sub_ae61fd8dAddress with:
       funct uint32(stor215)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor215), uint32(stor215), arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor215):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_5658916b(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x6597667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b9][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Operator'
    if arg1 > sub_f2f9c91f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x2e416d6f756e7420746f206265206c657373207468656e2065787465726e616c20636f6d6d697373696f6e20617661696c61626c6520746f2077697468647261
    sub_f2f9c91f -= arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor213), uint32(stor213), Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call sub_ae61fd8dAddress with:
       funct uint32(stor213)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor213), uint32(stor213), arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor213):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2945524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if lockupPeriod + stor237[address(arg1)] < stor237[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if lockupPeriod + stor237[address(arg1)] > block.timestamp:
        revert with 0, 'Withdrawal is locked up'
    require ext_code.size(stor235)
    staticcall stor235.0x5ea308d8 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                    mem[204 len 24]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_850e48c5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require ext_code.size(stor235)
        staticcall stor235.getProtectionData(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[96 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] >= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        if ext_call.return_data[96] <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < ('cd', 4).length
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        mem[132] = ext_call.return_data[96]
        require ext_code.size(stor235)
        call stor235.withdrawPremium(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)], ext_call.return_data[96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[96] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        require idx < ('cd', 4).length
        mem[96] = ext_call.return_data[96]
        emit 0xca76d38c: ext_call.return_data[96], cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        s = ext_call.return_data[96] + s
        continue 
    if lockedPremium < s:
        revert with 0, 
                    32,
                    67,
                    0x77506f6f6c204572726f723a20747279696e6720746f20756e6c6f636b20746f6f206d7563682e20536f6d657468696e672077656e7420766572792077726f6e672e2e,
                    mem[231 len 29]
    if s > lockedPremium:
        revert with 0, 'SafeMath: subtraction overflow'
    lockedPremium -= s
    if not s:
        if sub_24d65286 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_24d65286
        if (0 / sub_24d65286) + sub_f2f9c91f < sub_f2f9c91f:
            revert with 0, 'SafeMath: addition overflow'
        sub_f2f9c91f += 0 / sub_24d65286
        if not s:
            if sub_c8ff4b64 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c8ff4b64
            if (0 / sub_c8ff4b64) + sub_dae5beac < sub_dae5beac:
                revert with 0, 'SafeMath: addition overflow'
            sub_dae5beac += 0 / sub_c8ff4b64
            if 0 / sub_24d65286 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / sub_c8ff4b64 > s - (0 / sub_24d65286):
                revert with 0, 'SafeMath: subtraction overflow'
            if s - (0 / sub_24d65286) - (0 / sub_c8ff4b64) + totalCap < totalCap:
                revert with 0, 'SafeMath: addition overflow'
            totalCap = s - (0 / sub_24d65286) - (0 / sub_c8ff4b64) + totalCap
        else:
            if sub_e7c0dede * s / s != sub_e7c0dede:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if sub_c8ff4b64 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c8ff4b64
            if (sub_e7c0dede * s / sub_c8ff4b64) + sub_dae5beac < sub_dae5beac:
                revert with 0, 'SafeMath: addition overflow'
            sub_dae5beac += sub_e7c0dede * s / sub_c8ff4b64
            if 0 / sub_24d65286 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_e7c0dede * s / sub_c8ff4b64 > s - (0 / sub_24d65286):
                revert with 0, 'SafeMath: subtraction overflow'
            if s - (0 / sub_24d65286) - (sub_e7c0dede * s / sub_c8ff4b64) + totalCap < totalCap:
                revert with 0, 'SafeMath: addition overflow'
            totalCap = s - (0 / sub_24d65286) - (sub_e7c0dede * s / sub_c8ff4b64) + totalCap
    else:
        if sub_eddfaff1 * s / s != sub_eddfaff1:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if sub_24d65286 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_24d65286
        if (sub_eddfaff1 * s / sub_24d65286) + sub_f2f9c91f < sub_f2f9c91f:
            revert with 0, 'SafeMath: addition overflow'
        sub_f2f9c91f += sub_eddfaff1 * s / sub_24d65286
        if not s:
            if sub_c8ff4b64 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c8ff4b64
            if (0 / sub_c8ff4b64) + sub_dae5beac < sub_dae5beac:
                revert with 0, 'SafeMath: addition overflow'
            sub_dae5beac += 0 / sub_c8ff4b64
            if sub_eddfaff1 * s / sub_24d65286 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 / sub_c8ff4b64 > s - (sub_eddfaff1 * s / sub_24d65286):
                revert with 0, 'SafeMath: subtraction overflow'
            if s - (sub_eddfaff1 * s / sub_24d65286) - (0 / sub_c8ff4b64) + totalCap < totalCap:
                revert with 0, 'SafeMath: addition overflow'
            totalCap = s - (sub_eddfaff1 * s / sub_24d65286) - (0 / sub_c8ff4b64) + totalCap
        else:
            if sub_e7c0dede * s / s != sub_e7c0dede:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if sub_c8ff4b64 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_c8ff4b64
            if (sub_e7c0dede * s / sub_c8ff4b64) + sub_dae5beac < sub_dae5beac:
                revert with 0, 'SafeMath: addition overflow'
            sub_dae5beac += sub_e7c0dede * s / sub_c8ff4b64
            if sub_eddfaff1 * s / sub_24d65286 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_e7c0dede * s / sub_c8ff4b64 > s - (sub_eddfaff1 * s / sub_24d65286):
                revert with 0, 'SafeMath: subtraction overflow'
            if s - (sub_eddfaff1 * s / sub_24d65286) - (sub_e7c0dede * s / sub_c8ff4b64) + totalCap < totalCap:
                revert with 0, 'SafeMath: addition overflow'
            totalCap = s - (sub_eddfaff1 * s / sub_24d65286) - (sub_e7c0dede * s / sub_c8ff4b64) + totalCap
}

function sub_1d0bb169(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[192 len arg2.length] = arg2[all]
    mem[arg2.length + 192] = 0
    mem[ceil32(arg2.length) + 224] = call.data[36]
    mem[ceil32(arg2.length) + 256] = call.data[68]
    mem[ceil32(arg2.length) + 192] = 64
    if arg2.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(sha3(mem[ceil32(arg2.length) + 224 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 224 len -arg2.length + ceil32(arg2.length)]]), 0, mem[192], mem[224]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not roleAdmin[0x1522c5d2f2bfcb094489103faf91c9c412f68e706657062fbe6788935cb83784][1][address(signer)].field_0:
        revert with 0, 'Data Signature invalid'
    if not arg1:
        idx = 0
        while idx < stor222:
            if not uint256(stor223[0][0]):
                if not uint256(stor223[0][1]):
                    mem[0] = 1
                    mem[32] = sha3(0, 223)
                    if uint256(stor223[0][1]) != 0:
                        if 0 <= uint64(call.data[68]):
                            if 0 > sub_7fd74ea2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = idx + 1
                            continue 
                        if uint64(call.data[68]) > sub_c9e582f1:
                            sub_c9e582f1 = uint64(call.data[68])
                            mcr = call.data[36]
            mem[0] = 1
            mem[32] = sha3(0, 223)
            if uint64(stor223[0][1]) > uint64(call.data[68]):
                if uint64(call.data[68]) > sub_c9e582f1:
                    sub_c9e582f1 = uint64(call.data[68])
                    mcr = call.data[36]
            if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
            if uint256(stor223[0][1]):
                if uint256(stor223[uint256(stor223[0][1])][0]):
                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                    mem[32] = sha3(uint256(stor223[0][1]), 223)
                    uint256(stor223[uint256(stor223[0][1])][0]) = 0
                    mem[0] = 1
                    uint256(stor223[uint256(stor223[0][1])][1]) = 0
                    stor222--
                else:
                    if uint256(stor223[uint256(stor223[0][1])][1]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        mem[0] = 1
                        mem[32] = sha3(0, 223)
                        if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
            idx = idx + 1
            continue 
        if uint64(call.data[68]) > sub_c9e582f1:
            sub_c9e582f1 = uint64(call.data[68])
            mcr = call.data[36]
    else:
        if arg1 <= stor222:
            idx = 0
            while idx < arg1:
                if not uint256(stor223[0][0]):
                    if not uint256(stor223[0][1]):
                        mem[0] = 1
                        mem[32] = sha3(0, 223)
                        if uint256(stor223[0][1]) != 0:
                            if 0 <= uint64(call.data[68]):
                                if 0 > sub_7fd74ea2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                idx = idx + 1
                                continue 
                            if uint64(call.data[68]) > sub_c9e582f1:
                                sub_c9e582f1 = uint64(call.data[68])
                                mcr = call.data[36]
                mem[0] = 1
                mem[32] = sha3(0, 223)
                if uint64(stor223[0][1]) > uint64(call.data[68]):
                    if uint64(call.data[68]) > sub_c9e582f1:
                        sub_c9e582f1 = uint64(call.data[68])
                        mcr = call.data[36]
                if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
                if uint256(stor223[0][1]):
                    if uint256(stor223[uint256(stor223[0][1])][0]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        if uint256(stor223[uint256(stor223[0][1])][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
                        else:
                            mem[0] = 1
                            mem[32] = sha3(0, 223)
                            if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                mem[32] = sha3(uint256(stor223[0][1]), 223)
                                uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                mem[0] = 1
                                uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                stor222--
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < stor222:
                if not uint256(stor223[0][0]):
                    if not uint256(stor223[0][1]):
                        mem[0] = 1
                        mem[32] = sha3(0, 223)
                        if uint256(stor223[0][1]) != 0:
                            if 0 <= uint64(call.data[68]):
                                if 0 > sub_7fd74ea2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                idx = idx + 1
                                continue 
                            if uint64(call.data[68]) > sub_c9e582f1:
                                sub_c9e582f1 = uint64(call.data[68])
                                mcr = call.data[36]
                mem[0] = 1
                mem[32] = sha3(0, 223)
                if uint64(stor223[0][1]) > uint64(call.data[68]):
                    if uint64(call.data[68]) > sub_c9e582f1:
                        sub_c9e582f1 = uint64(call.data[68])
                        mcr = call.data[36]
                if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
                if uint256(stor223[0][1]):
                    if uint256(stor223[uint256(stor223[0][1])][0]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        if uint256(stor223[uint256(stor223[0][1])][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
                        else:
                            mem[0] = 1
                            mem[32] = sha3(0, 223)
                            if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                mem[32] = sha3(uint256(stor223[0][1]), 223)
                                uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                mem[0] = 1
                                uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                stor222--
                idx = idx + 1
                continue 
        if uint64(call.data[68]) > sub_c9e582f1:
            sub_c9e582f1 = uint64(call.data[68])
            mcr = call.data[36]
}

function withdrawTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Cannot withdraw when paused'
    if totalSupply <= 0:
        if sub_7fd74ea2 + mcr < mcr:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > totalCap:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalCap <= sub_7fd74ea2 + mcr:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                        mem[205 len 23]
    else:
        if not arg1:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[205 len 23]
        else:
            if totalCap * arg1 / arg1 != totalCap:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if totalCap * arg1 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (totalCap * arg1 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[205 len 23]
    if not totalSupply:
        require ext_code.size(sub_ae61fd8dAddress)
        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                        mem[220 len 8]
        if arg1 > totalCap:
            revert with 0, 'SafeMath: subtraction overflow'
        totalCap -= arg1
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
            revert with 0, 'Withdrawal is locked up'
        require ext_code.size(stor235)
        staticcall stor235.0x5ea308d8 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                        mem[204 len 24]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if not ext_code.size(sub_ae61fd8dAddress):
            revert with 0, 'Address: call to non-contract'
        mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
        mem[420 len 0] = 0
        call sub_ae61fd8dAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[420 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        else:
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
        emit Withdraw(arg1, msg.sender);
    else:
        if not arg1:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / totalSupply > ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[220 len 8]
            if 0 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= 0 / totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[204 len 24]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, 0 / totalSupply) >> 32
            mem[420 len 0] = 0
            call sub_ae61fd8dAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit Withdraw((0 / totalSupply), msg.sender);
        else:
            if totalCap * arg1 / arg1 != totalCap:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalCap * arg1 / totalSupply > ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[220 len 8]
            if totalCap * arg1 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= totalCap * arg1 / totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[204 len 24]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, totalCap * arg1 / totalSupply) >> 32
            mem[420 len 0] = 0
            call sub_ae61fd8dAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, totalCap * arg1 / totalSupply) << 224, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit Withdraw((totalCap * arg1 / totalSupply), msg.sender);
}

function depositTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Cannot deposit when paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call sub_ae61fd8dAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if totalCap != 0:
            if not arg1:
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[400 len 16],
                                0,
                                mem[420 len 4]
                if (0 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalCap
                if (0 / totalCap) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 0 / totalCap
                emit Transfer((0 / totalCap), 0, arg2);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[400 len 16],
                                0,
                                mem[420 len 4]
                if (totalSupply * arg1 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalCap
                if (totalSupply * arg1 / totalCap) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += totalSupply * arg1 / totalCap
                emit Transfer((totalSupply * arg1 / totalCap), 0, arg2);
        else:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[400 len 16],
                                0,
                                mem[420 len 4]
                if (0 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 10^uint8(ext_call.return_data[0])
                if (0 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 0 / 10^uint8(ext_call.return_data[0])
                emit Transfer((0 / 10^uint8(ext_call.return_data[0])), 0, arg2);
            else:
                if 10^decimals * arg1 / arg1 != 10^decimals:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[400 len 16],
                                0,
                                mem[420 len 4]
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                emit Transfer((10^decimals * arg1 / 10^uint8(ext_call.return_data[0])), 0, arg2);
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if totalCap != 0:
            if not arg1:
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[ceil32(return_data.size) + 401 len 24]
                if (0 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalCap
                if (0 / totalCap) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 0 / totalCap
                emit Transfer((0 / totalCap), 0, arg2);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[ceil32(return_data.size) + 401 len 24]
                if (totalSupply * arg1 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalCap
                if (totalSupply * arg1 / totalCap) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += totalSupply * arg1 / totalCap
                emit Transfer((totalSupply * arg1 / totalCap), 0, arg2);
        else:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[ceil32(return_data.size) + 401 len 24]
                if (0 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 10^uint8(ext_call.return_data[0])
                if (0 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 0 / 10^uint8(ext_call.return_data[0])
                emit Transfer((0 / 10^uint8(ext_call.return_data[0])), 0, arg2);
            else:
                if 10^decimals * arg1 / arg1 != 10^decimals:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if not arg2:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[ceil32(return_data.size) + 401 len 24]
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                emit Transfer((10^decimals * arg1 / 10^uint8(ext_call.return_data[0])), 0, arg2);
    if arg1 + totalCap < totalCap:
        revert with 0, 'SafeMath: addition overflow'
    totalCap += arg1
    emit Deposit(arg1, arg2);
    stor237[address(arg2)] = block.timestamp
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Cannot deposit when paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_ae61fd8dAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call sub_ae61fd8dAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if totalCap != 0:
            if not arg1:
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[400 len 16],
                                0,
                                mem[420 len 4]
                if (0 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalCap
                if (0 / totalCap) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / totalCap
                emit Transfer((0 / totalCap), 0, msg.sender);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[400 len 16],
                                0,
                                mem[420 len 4]
                if (totalSupply * arg1 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalCap
                if (totalSupply * arg1 / totalCap) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += totalSupply * arg1 / totalCap
                emit Transfer((totalSupply * arg1 / totalCap), 0, msg.sender);
        else:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[400 len 16],
                                0,
                                mem[420 len 4]
                if (0 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 10^uint8(ext_call.return_data[0])
                if (0 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / 10^uint8(ext_call.return_data[0])
                emit Transfer((0 / 10^uint8(ext_call.return_data[0])), 0, msg.sender);
            else:
                if 10^decimals * arg1 / arg1 != 10^decimals:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[400 len 16],
                                0,
                                mem[420 len 4]
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                emit Transfer((10^decimals * arg1 / 10^uint8(ext_call.return_data[0])), 0, msg.sender);
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if totalCap != 0:
            if not arg1:
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[ceil32(return_data.size) + 401 len 24]
                if (0 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalCap
                if (0 / totalCap) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / totalCap
                emit Transfer((0 / totalCap), 0, msg.sender);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if totalCap <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalCap
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[ceil32(return_data.size) + 401 len 24]
                if (totalSupply * arg1 / totalCap) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalCap
                if (totalSupply * arg1 / totalCap) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += totalSupply * arg1 / totalCap
                emit Transfer((totalSupply * arg1 / totalCap), 0, msg.sender);
        else:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[ceil32(return_data.size) + 401 len 24]
                if (0 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 10^uint8(ext_call.return_data[0])
                if (0 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / 10^uint8(ext_call.return_data[0])
                emit Transfer((0 / 10^uint8(ext_call.return_data[0])), 0, msg.sender);
            else:
                if 10^decimals * arg1 / arg1 != 10^decimals:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if 10^uint8(ext_call.return_data[0]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^uint8(ext_call.return_data[0])
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if lockupPeriod + stor237[0] < stor237[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[0] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[ceil32(return_data.size) + 401 len 24]
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                if (10^decimals * arg1 / 10^uint8(ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10^decimals * arg1 / 10^uint8(ext_call.return_data[0])
                emit Transfer((10^decimals * arg1 / 10^uint8(ext_call.return_data[0])), 0, msg.sender);
    if arg1 + totalCap < totalCap:
        revert with 0, 'SafeMath: addition overflow'
    totalCap += arg1
    emit Deposit(arg1, msg.sender);
    stor237[address(msg.sender)] = block.timestamp
}

function sub_b68f634e(?) payable {
    require calldata.size - 4 >= 256
    mem[96 len 160] = call.data[68 len 160]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[256] = arg3.length
    mem[288 len arg3.length] = arg3[all]
    mem[arg3.length + 288] = 0
    if lockupPeriod + stor237[msg.sender] < stor237[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if lockupPeriod + stor237[msg.sender] > block.timestamp:
        revert with 0, 'Withdrawal is locked up'
    mem[ceil32(arg3.length) + 320] = call.data[68]
    mem[ceil32(arg3.length) + 352] = call.data[100]
    mem[ceil32(arg3.length) + 384] = call.data[132]
    mem[ceil32(arg3.length) + 416] = call.data[164]
    mem[ceil32(arg3.length) + 448] = call.data[196]
    mem[ceil32(arg3.length) + 288] = 160
    _14 = sha3(mem[ceil32(arg3.length) + 320 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 320 len -arg3.length + ceil32(arg3.length)]])
    if arg3.length != 65:
        revert with 0, 'Incorrect signature length'
    mem[64] = ceil32(arg3.length) + 512
    mem[ceil32(arg3.length) + 512] = sha3(mem[ceil32(arg3.length) + 320 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 320 len -arg3.length + ceil32(arg3.length)]])
    mem[ceil32(arg3.length) + 544] = 0
    mem[ceil32(arg3.length) + 576] = mem[288]
    mem[ceil32(arg3.length) + 608] = mem[320]
    signer = erecover(_14, 0, mem[288], mem[320]) 
    mem[ceil32(arg3.length) + 480] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = address(signer)
    mem[32] = sha3(0x1522c5d2f2bfcb094489103faf91c9c412f68e706657062fbe6788935cb83784, 51) + 1
    if not roleAdmin[0x1522c5d2f2bfcb094489103faf91c9c412f68e706657062fbe6788935cb83784][1][address(signer)].field_0:
        revert with 0, 'Data Signature invalid'
    if arg1 != call.data[68]:
        revert with 0, 
                    32,
                    35,
                    0x73496e636f72726563742064617461207061636b61676520285f726571756573744944,
                    mem[327 len 25],
                    mem[ceil32(arg3.length) + 640 len 4]
    if arg2 != call.data[100]:
        revert with 0, 'Incorrect data package (_amount)'
    if block.timestamp > call.data[196]:
        revert with 0, 'quotation expired'
    idx = 0
    while idx < stor222:
        mem[0] = 1
        mem[32] = sha3(0, 223)
        if uint256(stor223[0][0]):
            if uint64(stor223[0][1]) <= uint64(call.data[164]):
                if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
                if uint256(stor223[0][1]):
                    if uint256(stor223[uint256(stor223[0][1])][0]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        if uint256(stor223[uint256(stor223[0][1])][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
                        else:
                            mem[0] = 1
                            mem[32] = sha3(0, 223)
                            if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                mem[32] = sha3(uint256(stor223[0][1]), 223)
                                uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                mem[0] = 1
                                uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                stor222--
                idx = idx + 1
                continue 
            if uint64(call.data[164]) <= sub_c9e582f1:
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_7fd74ea2 + mcr >= totalCap:
                    revert with 0, 
                                32,
                                67,
                                0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                                mem[ceil32(arg3.length) + 647 len 29]
                if paused:
                    revert with 0, 'Cannot withdraw when paused'
                if totalSupply <= 0:
                    if sub_7fd74ea2 + mcr < mcr:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalCap <= sub_7fd74ea2 + mcr:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                    mem[333 len 19],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if not totalSupply:
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if arg2 > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= arg2
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = arg2
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw(arg2, msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19376 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19378 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19378:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19378 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19378 + _19376 + -mem[64] + 68
                                mem[floor32(_19378) + _19376 + 68] = mem[floor32(_19378) + _19376 + -(_19378 % 32) + 100 len _19378 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19378) + _19376 + -mem[64] + 100
                        _18706 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18706] = return_data.size
                        mem[_18706 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18706 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19380 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19382 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19382) + _19380 + -mem[64] + 100
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19382:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19382 % 32:
                            revert with 0, 32, mem[mem[64] + 36 len _19382 + 32]
                        mem[floor32(_19382) + mem[64] + 68] = mem[floor32(_19382) + mem[64] + -(_19382 % 32) + 100 len _19382 % 32]
                        revert with 0, 32, mem[mem[64] + 36 len floor32(_19382) + 64]
                    if not arg2:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / totalSupply > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if 0 / totalSupply > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= 0 / totalSupply
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw((0 / totalSupply), msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19368 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19370 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19370:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19370 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19370 + _19368 + -mem[64] + 68
                                mem[floor32(_19370) + _19368 + 68] = mem[floor32(_19370) + _19368 + -(_19370 % 32) + 100 len _19370 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19370) + _19368 + -mem[64] + 100
                        _18703 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18703] = return_data.size
                        mem[_18703 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18703 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19372 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19374 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19374:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19374 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19374 + _19372 + -mem[64] + 68
                            mem[floor32(_19374) + _19372 + 68] = mem[floor32(_19374) + _19372 + -(_19374 % 32) + 100 len _19374 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19374) + _19372 + -mem[64] + 100
                    if totalCap * arg2 / arg2 != totalCap:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalCap * arg2 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg2 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19362 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19362) + _19360 + -mem[64] + 100
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19362:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19362 % 32:
                            revert with 0, 32, mem[mem[64] + 36 len _19362 + 32]
                        mem[floor32(_19362) + mem[64] + 68] = mem[floor32(_19362) + mem[64] + -(_19362 % 32) + 100 len _19362 % 32]
                        revert with 0, 32, mem[mem[64] + 36 len floor32(_19362) + 64]
                    _18700 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18700] = return_data.size
                    mem[_18700 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18700 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19364 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19366 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19366:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19366 % 32:
                            revert with memory
                              from mem[64]
                               len _19366 + _19364 + -mem[64] + 68
                        mem[floor32(_19366) + _19364 + 68] = mem[floor32(_19366) + _19364 + -(_19366 % 32) + 100 len _19366 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19366) + _19364 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if sub_7fd74ea2 + mcr < mcr:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                    mem[333 len 19],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if not totalSupply:
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if arg2 > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= arg2
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = arg2
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw(arg2, msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19352 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19354 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19354:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19354 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19354 + _19352 + -mem[64] + 68
                                mem[floor32(_19354) + _19352 + 68] = mem[floor32(_19354) + _19352 + -(_19354 % 32) + 100 len _19354 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19354) + _19352 + -mem[64] + 100
                        _18697 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18697] = return_data.size
                        mem[_18697 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18697 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19356 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19358 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19358:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19358 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19358 + _19356 + -mem[64] + 68
                            mem[floor32(_19358) + _19356 + 68] = mem[floor32(_19358) + _19356 + -(_19358 % 32) + 100 len _19358 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19358) + _19356 + -mem[64] + 100
                    if not arg2:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / totalSupply > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if 0 / totalSupply > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= 0 / totalSupply
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw((0 / totalSupply), msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19344 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19346 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                                revert with memory
                                  from mem[64]
                                   len floor32(_19346) + _19344 + -mem[64] + 100
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19346:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19346 % 32:
                                revert with 0, 32, mem[mem[64] + 36 len _19346 + 32]
                            mem[floor32(_19346) + mem[64] + 68] = mem[floor32(_19346) + mem[64] + -(_19346 % 32) + 100 len _19346 % 32]
                            revert with 0, 32, mem[mem[64] + 36 len floor32(_19346) + 64]
                        _18694 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18694] = return_data.size
                        mem[_18694 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18694 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19348 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19350 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19350:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19350 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19350 + _19348 + -mem[64] + 68
                            mem[floor32(_19350) + _19348 + 68] = mem[floor32(_19350) + _19348 + -(_19350 % 32) + 100 len _19350 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19350) + _19348 + -mem[64] + 100
                    if totalCap * arg2 / arg2 != totalCap:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalCap * arg2 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg2 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19336 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19338 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19338:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19338 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19338 + _19336 + -mem[64] + 68
                            mem[floor32(_19338) + _19336 + 68] = mem[floor32(_19338) + _19336 + -(_19338 % 32) + 100 len _19338 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19338) + _19336 + -mem[64] + 100
                    _18691 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18691] = return_data.size
                    mem[_18691 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18691 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19342 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19342:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19342 % 32:
                            revert with memory
                              from mem[64]
                               len _19342 + _19340 + -mem[64] + 68
                        mem[floor32(_19342) + _19340 + 68] = mem[floor32(_19342) + _19340 + -(_19342 % 32) + 100 len _19342 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19342) + _19340 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19328 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19330 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19330:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19330 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19330 + _19328 + -mem[64] + 68
                            mem[floor32(_19330) + _19328 + 68] = mem[floor32(_19330) + _19328 + -(_19330 % 32) + 100 len _19330 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19330) + _19328 + -mem[64] + 100
                    _18688 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18688] = return_data.size
                    mem[_18688 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18688 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19332 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19334 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19334:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19334 % 32:
                            revert with memory
                              from mem[64]
                               len _19334 + _19332 + -mem[64] + 68
                        mem[floor32(_19334) + _19332 + 68] = mem[floor32(_19334) + _19332 + -(_19334 % 32) + 100 len _19334 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19334) + _19332 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19320 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19322 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19322:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19322 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19322 + _19320 + -mem[64] + 68
                            mem[floor32(_19322) + _19320 + 68] = mem[floor32(_19322) + _19320 + -(_19322 % 32) + 100 len _19322 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19322) + _19320 + -mem[64] + 100
                    _18685 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18685] = return_data.size
                    mem[_18685 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18685 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19324 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19326 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19326:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19326 % 32:
                            revert with memory
                              from mem[64]
                               len _19326 + _19324 + -mem[64] + 68
                        mem[floor32(_19326) + _19324 + 68] = mem[floor32(_19326) + _19324 + -(_19326 % 32) + 100 len _19326 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19326) + _19324 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19314 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19314:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19314 % 32:
                            revert with memory
                              from mem[64]
                               len _19314 + _19312 + -mem[64] + 68
                        mem[floor32(_19314) + _19312 + 68] = mem[floor32(_19314) + _19312 + -(_19314 % 32) + 100 len _19314 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19314) + _19312 + -mem[64] + 100
                _18682 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18682] = return_data.size
                mem[_18682 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18682 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19316 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19318 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19318:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19318 % 32:
                        revert with memory
                          from mem[64]
                           len _19318 + _19316 + -mem[64] + 68
                    mem[floor32(_19318) + _19316 + 68] = mem[floor32(_19318) + _19316 + -(_19318 % 32) + 100 len _19318 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19318) + _19316 + -mem[64] + 100
            sub_c9e582f1 = uint64(call.data[164])
            mcr = call.data[132]
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if sub_7fd74ea2 + mcr >= totalCap:
                revert with 0, 
                            32,
                            67,
                            0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                            mem[ceil32(arg3.length) + 647 len 29]
            if paused:
                revert with 0, 'Cannot withdraw when paused'
            if totalSupply <= 0:
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19448 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19450 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19450:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19450 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19450 + _19448 + -mem[64] + 68
                            mem[floor32(_19450) + _19448 + 68] = mem[floor32(_19450) + _19448 + -(_19450 % 32) + 100 len _19450 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19450) + _19448 + -mem[64] + 100
                    _18733 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18733] = return_data.size
                    mem[_18733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18733 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19452 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19454 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19454:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19454 % 32:
                            revert with memory
                              from mem[64]
                               len _19454 + _19452 + -mem[64] + 68
                        mem[floor32(_19454) + _19452 + 68] = mem[floor32(_19454) + _19452 + -(_19454 % 32) + 100 len _19454 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19454) + _19452 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19440 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19442 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19442:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19442 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19442 + _19440 + -mem[64] + 68
                            mem[floor32(_19442) + _19440 + 68] = mem[floor32(_19442) + _19440 + -(_19442 % 32) + 100 len _19442 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19442) + _19440 + -mem[64] + 100
                    _18730 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18730] = return_data.size
                    mem[_18730 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18730 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19444 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19446 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19446:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19446 % 32:
                            revert with memory
                              from mem[64]
                               len _19446 + _19444 + -mem[64] + 68
                        mem[floor32(_19446) + _19444 + 68] = mem[floor32(_19446) + _19444 + -(_19446 % 32) + 100 len _19446 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19446) + _19444 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19434 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19434:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19434 % 32:
                            revert with memory
                              from mem[64]
                               len _19434 + _19432 + -mem[64] + 68
                        mem[floor32(_19434) + _19432 + 68] = mem[floor32(_19434) + _19432 + -(_19434 % 32) + 100 len _19434 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19434) + _19432 + -mem[64] + 100
                _18727 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18727] = return_data.size
                mem[_18727 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18727 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19436 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19438 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19438:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19438 % 32:
                        revert with memory
                          from mem[64]
                           len _19438 + _19436 + -mem[64] + 68
                    mem[floor32(_19438) + _19436 + 68] = mem[floor32(_19438) + _19436 + -(_19438 % 32) + 100 len _19438 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19438) + _19436 + -mem[64] + 100
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19424 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19426 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19426:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19426 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19426 + _19424 + -mem[64] + 68
                            mem[floor32(_19426) + _19424 + 68] = mem[floor32(_19426) + _19424 + -(_19426 % 32) + 100 len _19426 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19426) + _19424 + -mem[64] + 100
                    _18724 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18724] = return_data.size
                    mem[_18724 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18724 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19428 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19430 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19430:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19430 % 32:
                            revert with memory
                              from mem[64]
                               len _19430 + _19428 + -mem[64] + 68
                        mem[floor32(_19430) + _19428 + 68] = mem[floor32(_19430) + _19428 + -(_19430 % 32) + 100 len _19430 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19430) + _19428 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19416 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19418 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19418:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19418 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19418 + _19416 + -mem[64] + 68
                            mem[floor32(_19418) + _19416 + 68] = mem[floor32(_19418) + _19416 + -(_19418 % 32) + 100 len _19418 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19418) + _19416 + -mem[64] + 100
                    _18721 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18721] = return_data.size
                    mem[_18721 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18721 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19420 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19422 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19422:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19422 % 32:
                            revert with memory
                              from mem[64]
                               len _19422 + _19420 + -mem[64] + 68
                        mem[floor32(_19422) + _19420 + 68] = mem[floor32(_19422) + _19420 + -(_19422 % 32) + 100 len _19422 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19422) + _19420 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19408 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19410 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19410:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19410 % 32:
                            revert with memory
                              from mem[64]
                               len _19410 + _19408 + -mem[64] + 68
                        mem[floor32(_19410) + _19408 + 68] = mem[floor32(_19410) + _19408 + -(_19410 % 32) + 100 len _19410 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19410) + _19408 + -mem[64] + 100
                _18718 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18718] = return_data.size
                mem[_18718 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18718 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19412 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19414 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19414:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19414 % 32:
                        revert with memory
                          from mem[64]
                           len _19414 + _19412 + -mem[64] + 68
                    mem[floor32(_19414) + _19412 + 68] = mem[floor32(_19414) + _19412 + -(_19414 % 32) + 100 len _19414 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19414) + _19412 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[333 len 19],
                            mem[ceil32(arg3.length) + 640 len 4]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if arg2 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg2
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = arg2
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19400 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19402 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19402:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19402 % 32:
                            revert with memory
                              from mem[64]
                               len _19402 + _19400 + -mem[64] + 68
                        mem[floor32(_19402) + _19400 + 68] = mem[floor32(_19402) + _19400 + -(_19402 % 32) + 100 len _19402 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19402) + _19400 + -mem[64] + 100
                _18715 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18715] = return_data.size
                mem[_18715 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18715 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw(arg2, msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19404 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19406 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19406) + _19404 + -mem[64] + 100
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                idx = 32
                while idx < _19406:
                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                    idx = idx + 32
                    continue 
                if not _19406 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _19406 + 32]
                mem[floor32(_19406) + mem[64] + 68] = mem[floor32(_19406) + mem[64] + -(_19406 % 32) + 100 len _19406 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_19406) + 64]
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= 0 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19392 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19394 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19394:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19394 % 32:
                            revert with memory
                              from mem[64]
                               len _19394 + _19392 + -mem[64] + 68
                        mem[floor32(_19394) + _19392 + 68] = mem[floor32(_19394) + _19392 + -(_19394 % 32) + 100 len _19394 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19394) + _19392 + -mem[64] + 100
                _18712 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18712] = return_data.size
                mem[_18712 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18712 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19396 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19398 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19398:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19398 % 32:
                        revert with memory
                          from mem[64]
                           len _19398 + _19396 + -mem[64] + 68
                    mem[floor32(_19398) + _19396 + 68] = mem[floor32(_19398) + _19396 + -(_19398 % 32) + 100 len _19398 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19398) + _19396 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= totalCap * arg2 / totalSupply
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 612] = 32
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
            mem[0] = msg.sender
            mem[32] = 151
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[64] = ceil32(arg3.length) + 772
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            s = ceil32(arg3.length) + 640
            t = mem[64]
            idx = mem[ceil32(arg3.length) + 608]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
            call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _19384 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19386 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19386:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19386 % 32:
                        revert with memory
                          from mem[64]
                           len _19386 + _19384 + -mem[64] + 68
                    mem[floor32(_19386) + _19384 + 68] = mem[floor32(_19386) + _19384 + -(_19386 % 32) + 100 len _19386 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19386) + _19384 + -mem[64] + 100
            _18709 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_18709] = return_data.size
            mem[_18709 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_18709 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _19388 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
            _19390 = mem[ceil32(arg3.length) + 708]
            if not mem[ceil32(arg3.length) + 708]:
                if not mem[ceil32(arg3.length) + 708] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
            else:
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                idx = 32
                while idx < _19390:
                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                    idx = idx + 32
                    continue 
                if not _19390 % 32:
                    revert with memory
                      from mem[64]
                       len _19390 + _19388 + -mem[64] + 68
                mem[floor32(_19390) + _19388 + 68] = mem[floor32(_19390) + _19388 + -(_19390 % 32) + 100 len _19390 % 32]
            revert with memory
              from mem[64]
               len floor32(_19390) + _19388 + -mem[64] + 100
        if uint256(stor223[0][1]):
            if uint64(stor223[0][1]) <= uint64(call.data[164]):
                if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
                if uint256(stor223[0][1]):
                    if uint256(stor223[uint256(stor223[0][1])][0]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        if uint256(stor223[uint256(stor223[0][1])][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
                        else:
                            mem[0] = 1
                            mem[32] = sha3(0, 223)
                            if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                                uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                                mem[32] = sha3(uint256(stor223[0][1]), 223)
                                uint256(stor223[uint256(stor223[0][1])][0]) = 0
                                mem[0] = 1
                                uint256(stor223[uint256(stor223[0][1])][1]) = 0
                                stor222--
                idx = idx + 1
                continue 
            if uint64(call.data[164]) <= sub_c9e582f1:
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_7fd74ea2 + mcr >= totalCap:
                    revert with 0, 
                                32,
                                67,
                                0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                                mem[ceil32(arg3.length) + 647 len 29]
                if paused:
                    revert with 0, 'Cannot withdraw when paused'
                if totalSupply <= 0:
                    if sub_7fd74ea2 + mcr < mcr:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalCap <= sub_7fd74ea2 + mcr:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                    mem[333 len 19],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if not totalSupply:
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if arg2 > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= arg2
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = arg2
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw(arg2, msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19520 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19522 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19522:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19522 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19522 + _19520 + -mem[64] + 68
                                mem[floor32(_19522) + _19520 + 68] = mem[floor32(_19522) + _19520 + -(_19522 % 32) + 100 len _19522 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19522) + _19520 + -mem[64] + 100
                        _18760 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18760] = return_data.size
                        mem[_18760 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18760 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19524 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19526 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19526:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19526 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19526 + _19524 + -mem[64] + 68
                            mem[floor32(_19526) + _19524 + 68] = mem[floor32(_19526) + _19524 + -(_19526 % 32) + 100 len _19526 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19526) + _19524 + -mem[64] + 100
                    if not arg2:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / totalSupply > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if 0 / totalSupply > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= 0 / totalSupply
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw((0 / totalSupply), msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19512 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19514 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19514:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19514 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19514 + _19512 + -mem[64] + 68
                                mem[floor32(_19514) + _19512 + 68] = mem[floor32(_19514) + _19512 + -(_19514 % 32) + 100 len _19514 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19514) + _19512 + -mem[64] + 100
                        _18757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18757] = return_data.size
                        mem[_18757 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18757 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19516 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19518 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19518:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19518 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19518 + _19516 + -mem[64] + 68
                            mem[floor32(_19518) + _19516 + 68] = mem[floor32(_19518) + _19516 + -(_19518 % 32) + 100 len _19518 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19518) + _19516 + -mem[64] + 100
                    if totalCap * arg2 / arg2 != totalCap:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalCap * arg2 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg2 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19504 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19506 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19506:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19506 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19506 + _19504 + -mem[64] + 68
                            mem[floor32(_19506) + _19504 + 68] = mem[floor32(_19506) + _19504 + -(_19506 % 32) + 100 len _19506 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19506) + _19504 + -mem[64] + 100
                    _18754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18754] = return_data.size
                    mem[_18754 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18754 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19508 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19510 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19510:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19510 % 32:
                            revert with memory
                              from mem[64]
                               len _19510 + _19508 + -mem[64] + 68
                        mem[floor32(_19510) + _19508 + 68] = mem[floor32(_19510) + _19508 + -(_19510 % 32) + 100 len _19510 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19510) + _19508 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if sub_7fd74ea2 + mcr < mcr:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                    mem[333 len 19],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if not totalSupply:
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if arg2 > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= arg2
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = arg2
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw(arg2, msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19496 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19498 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19498:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19498 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19498 + _19496 + -mem[64] + 68
                                mem[floor32(_19498) + _19496 + 68] = mem[floor32(_19498) + _19496 + -(_19498 % 32) + 100 len _19498 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19498) + _19496 + -mem[64] + 100
                        _18751 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18751] = return_data.size
                        mem[_18751 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18751 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19500 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19502 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19502:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19502 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19502 + _19500 + -mem[64] + 68
                            mem[floor32(_19502) + _19500 + 68] = mem[floor32(_19502) + _19500 + -(_19502 % 32) + 100 len _19502 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19502) + _19500 + -mem[64] + 100
                    if not arg2:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / totalSupply > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if 0 / totalSupply > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= 0 / totalSupply
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw((0 / totalSupply), msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19488 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19490 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19490:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19490 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19490 + _19488 + -mem[64] + 68
                                mem[floor32(_19490) + _19488 + 68] = mem[floor32(_19490) + _19488 + -(_19490 % 32) + 100 len _19490 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19490) + _19488 + -mem[64] + 100
                        _18748 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18748] = return_data.size
                        mem[_18748 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18748 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19492 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19494 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19494) + _19492 + -mem[64] + 100
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19494:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19494 % 32:
                            revert with 0, 32, mem[mem[64] + 36 len _19494 + 32]
                        mem[floor32(_19494) + mem[64] + 68] = mem[floor32(_19494) + mem[64] + -(_19494 % 32) + 100 len _19494 % 32]
                        revert with 0, 32, mem[mem[64] + 36 len floor32(_19494) + 64]
                    if totalCap * arg2 / arg2 != totalCap:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalCap * arg2 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg2 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19480 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19482 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19482:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19482 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19482 + _19480 + -mem[64] + 68
                            mem[floor32(_19482) + _19480 + 68] = mem[floor32(_19482) + _19480 + -(_19482 % 32) + 100 len _19482 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19482) + _19480 + -mem[64] + 100
                    _18745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18745] = return_data.size
                    mem[_18745 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18745 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19484 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19486 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19486:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19486 % 32:
                            revert with memory
                              from mem[64]
                               len _19486 + _19484 + -mem[64] + 68
                        mem[floor32(_19486) + _19484 + 68] = mem[floor32(_19486) + _19484 + -(_19486 % 32) + 100 len _19486 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19486) + _19484 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19472 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19474 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19474:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19474 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19474 + _19472 + -mem[64] + 68
                            mem[floor32(_19474) + _19472 + 68] = mem[floor32(_19474) + _19472 + -(_19474 % 32) + 100 len _19474 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19474) + _19472 + -mem[64] + 100
                    _18742 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18742] = return_data.size
                    mem[_18742 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18742 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19476 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19478 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19478:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19478 % 32:
                            revert with memory
                              from mem[64]
                               len _19478 + _19476 + -mem[64] + 68
                        mem[floor32(_19478) + _19476 + 68] = mem[floor32(_19478) + _19476 + -(_19478 % 32) + 100 len _19478 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19478) + _19476 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19464 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19466 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19466:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19466 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19466 + _19464 + -mem[64] + 68
                            mem[floor32(_19466) + _19464 + 68] = mem[floor32(_19466) + _19464 + -(_19466 % 32) + 100 len _19466 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19466) + _19464 + -mem[64] + 100
                    _18739 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18739] = return_data.size
                    mem[_18739 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18739 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19468 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19470 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19470:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19470 % 32:
                            revert with memory
                              from mem[64]
                               len _19470 + _19468 + -mem[64] + 68
                        mem[floor32(_19470) + _19468 + 68] = mem[floor32(_19470) + _19468 + -(_19470 % 32) + 100 len _19470 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19470) + _19468 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19456 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19458 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19458:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19458 % 32:
                            revert with memory
                              from mem[64]
                               len _19458 + _19456 + -mem[64] + 68
                        mem[floor32(_19458) + _19456 + 68] = mem[floor32(_19458) + _19456 + -(_19458 % 32) + 100 len _19458 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19458) + _19456 + -mem[64] + 100
                _18736 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18736] = return_data.size
                mem[_18736 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18736 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19460 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19462 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19462:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19462 % 32:
                        revert with memory
                          from mem[64]
                           len _19462 + _19460 + -mem[64] + 68
                    mem[floor32(_19462) + _19460 + 68] = mem[floor32(_19462) + _19460 + -(_19462 % 32) + 100 len _19462 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19462) + _19460 + -mem[64] + 100
            sub_c9e582f1 = uint64(call.data[164])
            mcr = call.data[132]
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if sub_7fd74ea2 + mcr >= totalCap:
                revert with 0, 
                            32,
                            67,
                            0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                            mem[ceil32(arg3.length) + 647 len 29]
            if paused:
                revert with 0, 'Cannot withdraw when paused'
            if totalSupply <= 0:
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19592 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19594 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19594:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19594 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19594 + _19592 + -mem[64] + 68
                            mem[floor32(_19594) + _19592 + 68] = mem[floor32(_19594) + _19592 + -(_19594 % 32) + 100 len _19594 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19594) + _19592 + -mem[64] + 100
                    _18787 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18787] = return_data.size
                    mem[_18787 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18787 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19596 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19598 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19598:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19598 % 32:
                            revert with memory
                              from mem[64]
                               len _19598 + _19596 + -mem[64] + 68
                        mem[floor32(_19598) + _19596 + 68] = mem[floor32(_19598) + _19596 + -(_19598 % 32) + 100 len _19598 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19598) + _19596 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19584 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19586 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19586:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19586 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19586 + _19584 + -mem[64] + 68
                            mem[floor32(_19586) + _19584 + 68] = mem[floor32(_19586) + _19584 + -(_19586 % 32) + 100 len _19586 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19586) + _19584 + -mem[64] + 100
                    _18784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18784] = return_data.size
                    mem[_18784 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18784 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19588 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19590 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19590:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19590 % 32:
                            revert with memory
                              from mem[64]
                               len _19590 + _19588 + -mem[64] + 68
                        mem[floor32(_19590) + _19588 + 68] = mem[floor32(_19590) + _19588 + -(_19590 % 32) + 100 len _19590 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19590) + _19588 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19576 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19578 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19578:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19578 % 32:
                            revert with memory
                              from mem[64]
                               len _19578 + _19576 + -mem[64] + 68
                        mem[floor32(_19578) + _19576 + 68] = mem[floor32(_19578) + _19576 + -(_19578 % 32) + 100 len _19578 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19578) + _19576 + -mem[64] + 100
                _18781 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18781] = return_data.size
                mem[_18781 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18781 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19580 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19582 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19582:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19582 % 32:
                        revert with memory
                          from mem[64]
                           len _19582 + _19580 + -mem[64] + 68
                    mem[floor32(_19582) + _19580 + 68] = mem[floor32(_19582) + _19580 + -(_19582 % 32) + 100 len _19582 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19582) + _19580 + -mem[64] + 100
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19568 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19570 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19570:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19570 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19570 + _19568 + -mem[64] + 68
                            mem[floor32(_19570) + _19568 + 68] = mem[floor32(_19570) + _19568 + -(_19570 % 32) + 100 len _19570 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19570) + _19568 + -mem[64] + 100
                    _18778 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18778] = return_data.size
                    mem[_18778 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18778 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19572 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19574 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19574:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19574 % 32:
                            revert with memory
                              from mem[64]
                               len _19574 + _19572 + -mem[64] + 68
                        mem[floor32(_19574) + _19572 + 68] = mem[floor32(_19574) + _19572 + -(_19574 % 32) + 100 len _19574 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19574) + _19572 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19560 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19562 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19562:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19562 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19562 + _19560 + -mem[64] + 68
                            mem[floor32(_19562) + _19560 + 68] = mem[floor32(_19562) + _19560 + -(_19562 % 32) + 100 len _19562 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19562) + _19560 + -mem[64] + 100
                    _18775 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18775] = return_data.size
                    mem[_18775 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18775 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19564 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19566 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19566:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19566 % 32:
                            revert with memory
                              from mem[64]
                               len _19566 + _19564 + -mem[64] + 68
                        mem[floor32(_19566) + _19564 + 68] = mem[floor32(_19566) + _19564 + -(_19566 % 32) + 100 len _19566 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19566) + _19564 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19552 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19554 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19554:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19554 % 32:
                            revert with memory
                              from mem[64]
                               len _19554 + _19552 + -mem[64] + 68
                        mem[floor32(_19554) + _19552 + 68] = mem[floor32(_19554) + _19552 + -(_19554 % 32) + 100 len _19554 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19554) + _19552 + -mem[64] + 100
                _18772 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18772] = return_data.size
                mem[_18772 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18772 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19556 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19558 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19558:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19558 % 32:
                        revert with memory
                          from mem[64]
                           len _19558 + _19556 + -mem[64] + 68
                    mem[floor32(_19558) + _19556 + 68] = mem[floor32(_19558) + _19556 + -(_19558 % 32) + 100 len _19558 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19558) + _19556 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[333 len 19],
                            mem[ceil32(arg3.length) + 640 len 4]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if arg2 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg2
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = arg2
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19544 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19546 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19546:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19546 % 32:
                            revert with memory
                              from mem[64]
                               len _19546 + _19544 + -mem[64] + 68
                        mem[floor32(_19546) + _19544 + 68] = mem[floor32(_19546) + _19544 + -(_19546 % 32) + 100 len _19546 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19546) + _19544 + -mem[64] + 100
                _18769 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18769] = return_data.size
                mem[_18769 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18769 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw(arg2, msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19548 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19550 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19550) + _19548 + -mem[64] + 100
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                idx = 32
                while idx < _19550:
                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                    idx = idx + 32
                    continue 
                if not _19550 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _19550 + 32]
                mem[floor32(_19550) + mem[64] + 68] = mem[floor32(_19550) + mem[64] + -(_19550 % 32) + 100 len _19550 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_19550) + 64]
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= 0 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19536 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19538 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19538:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19538 % 32:
                            revert with memory
                              from mem[64]
                               len _19538 + _19536 + -mem[64] + 68
                        mem[floor32(_19538) + _19536 + 68] = mem[floor32(_19538) + _19536 + -(_19538 % 32) + 100 len _19538 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19538) + _19536 + -mem[64] + 100
                _18766 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18766] = return_data.size
                mem[_18766 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18766 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19540 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19542 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19542:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19542 % 32:
                        revert with memory
                          from mem[64]
                           len _19542 + _19540 + -mem[64] + 68
                    mem[floor32(_19542) + _19540 + 68] = mem[floor32(_19542) + _19540 + -(_19542 % 32) + 100 len _19542 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19542) + _19540 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= totalCap * arg2 / totalSupply
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 612] = 32
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
            mem[0] = msg.sender
            mem[32] = 151
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[64] = ceil32(arg3.length) + 772
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            s = ceil32(arg3.length) + 640
            t = mem[64]
            idx = mem[ceil32(arg3.length) + 608]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
            call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _19528 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19530 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19530:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19530 % 32:
                        revert with memory
                          from mem[64]
                           len _19530 + _19528 + -mem[64] + 68
                    mem[floor32(_19530) + _19528 + 68] = mem[floor32(_19530) + _19528 + -(_19530 % 32) + 100 len _19530 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19530) + _19528 + -mem[64] + 100
            _18763 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_18763] = return_data.size
            mem[_18763 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_18763 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _19532 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
            _19534 = mem[ceil32(arg3.length) + 708]
            if not mem[ceil32(arg3.length) + 708]:
                if not mem[ceil32(arg3.length) + 708] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
            else:
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                idx = 32
                while idx < _19534:
                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                    idx = idx + 32
                    continue 
                if not _19534 % 32:
                    revert with memory
                      from mem[64]
                       len _19534 + _19532 + -mem[64] + 68
                mem[floor32(_19534) + _19532 + 68] = mem[floor32(_19534) + _19532 + -(_19534 % 32) + 100 len _19534 % 32]
            revert with memory
              from mem[64]
               len floor32(_19534) + _19532 + -mem[64] + 100
        if uint256(stor223[0][1]) != 0:
            if 0 <= uint64(call.data[164]):
                if 0 > sub_7fd74ea2:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = idx + 1
                continue 
            if uint64(call.data[164]) <= sub_c9e582f1:
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_7fd74ea2 + mcr >= totalCap:
                    revert with 0, 
                                32,
                                67,
                                0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                                mem[ceil32(arg3.length) + 647 len 29]
                if paused:
                    revert with 0, 'Cannot withdraw when paused'
                if totalSupply <= 0:
                    if sub_7fd74ea2 + mcr < mcr:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalCap <= sub_7fd74ea2 + mcr:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                    mem[333 len 19],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if not totalSupply:
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if arg2 > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= arg2
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = arg2
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw(arg2, msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19664 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19666 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19666:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19666 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19666 + _19664 + -mem[64] + 68
                                mem[floor32(_19666) + _19664 + 68] = mem[floor32(_19666) + _19664 + -(_19666 % 32) + 100 len _19666 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19666) + _19664 + -mem[64] + 100
                        _18814 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18814] = return_data.size
                        mem[_18814 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18814 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19668 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19670 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19670:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19670 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19670 + _19668 + -mem[64] + 68
                            mem[floor32(_19670) + _19668 + 68] = mem[floor32(_19670) + _19668 + -(_19670 % 32) + 100 len _19670 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19670) + _19668 + -mem[64] + 100
                    if not arg2:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / totalSupply > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if 0 / totalSupply > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= 0 / totalSupply
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw((0 / totalSupply), msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19656 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19658 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19658:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19658 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19658 + _19656 + -mem[64] + 68
                                mem[floor32(_19658) + _19656 + 68] = mem[floor32(_19658) + _19656 + -(_19658 % 32) + 100 len _19658 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19658) + _19656 + -mem[64] + 100
                        _18811 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18811] = return_data.size
                        mem[_18811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18811 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19660 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19662 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19662:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19662 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19662 + _19660 + -mem[64] + 68
                            mem[floor32(_19662) + _19660 + 68] = mem[floor32(_19662) + _19660 + -(_19662 % 32) + 100 len _19662 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19662) + _19660 + -mem[64] + 100
                    if totalCap * arg2 / arg2 != totalCap:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalCap * arg2 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg2 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19648 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19650 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19650:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19650 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19650 + _19648 + -mem[64] + 68
                            mem[floor32(_19650) + _19648 + 68] = mem[floor32(_19650) + _19648 + -(_19650 % 32) + 100 len _19650 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19650) + _19648 + -mem[64] + 100
                    _18808 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18808] = return_data.size
                    mem[_18808 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18808 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19652 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19654 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19654:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19654 % 32:
                            revert with memory
                              from mem[64]
                               len _19654 + _19652 + -mem[64] + 68
                        mem[floor32(_19654) + _19652 + 68] = mem[floor32(_19654) + _19652 + -(_19654 % 32) + 100 len _19654 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19654) + _19652 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if sub_7fd74ea2 + mcr < mcr:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                    mem[333 len 19],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if not totalSupply:
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if arg2 > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= arg2
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = arg2
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw(arg2, msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19640 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19642 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19642:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19642 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19642 + _19640 + -mem[64] + 68
                                mem[floor32(_19642) + _19640 + 68] = mem[floor32(_19642) + _19640 + -(_19642 % 32) + 100 len _19642 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19642) + _19640 + -mem[64] + 100
                        _18805 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18805] = return_data.size
                        mem[_18805 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18805 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19644 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19646 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19646:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19646 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19646 + _19644 + -mem[64] + 68
                            mem[floor32(_19646) + _19644 + 68] = mem[floor32(_19646) + _19644 + -(_19646 % 32) + 100 len _19646 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19646) + _19644 + -mem[64] + 100
                    if not arg2:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        require ext_code.size(sub_ae61fd8dAddress)
                        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 / totalSupply > ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        56,
                                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                        mem[348 len 4],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if 0 / totalSupply > totalCap:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalCap -= 0 / totalSupply
                        if not msg.sender:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[325 len 27],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                            revert with 0, 'Withdrawal is locked up'
                        require ext_code.size(stor235)
                        staticcall stor235.0x5ea308d8 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                        mem[332 len 20],
                                        mem[ceil32(arg3.length) + 640 len 4]
                        mem[ceil32(arg3.length) + 512] = 34
                        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 612] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                                idx = idx + 32
                                continue 
                            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                        mem[0] = msg.sender
                        mem[32] = 151
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2
                        emit Transfer(arg2, msg.sender, 0);
                        mem[ceil32(arg3.length) + 644] = msg.sender
                        mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                        mem[ceil32(arg3.length) + 608] = 68
                        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[64] = ceil32(arg3.length) + 772
                        mem[ceil32(arg3.length) + 708] = 32
                        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(arg3.length) + 878 len 26]
                        if not ext_code.size(sub_ae61fd8dAddress):
                            revert with 0, 'Address: call to non-contract'
                        s = ceil32(arg3.length) + 640
                        t = mem[64]
                        idx = mem[ceil32(arg3.length) + 608]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                        if not return_data.size:
                            if ext_call.success:
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                                emit Withdraw((0 / totalSupply), msg.sender);
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            _19632 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                            _19634 = mem[ceil32(arg3.length) + 708]
                            if not mem[ceil32(arg3.length) + 708]:
                                if not mem[ceil32(arg3.length) + 708] % 32:
                                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            else:
                                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                                idx = 32
                                while idx < _19634:
                                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                    idx = idx + 32
                                    continue 
                                if not _19634 % 32:
                                    revert with memory
                                      from mem[64]
                                       len _19634 + _19632 + -mem[64] + 68
                                mem[floor32(_19634) + _19632 + 68] = mem[floor32(_19634) + _19632 + -(_19634 % 32) + 100 len _19634 % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19634) + _19632 + -mem[64] + 100
                        _18802 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_18802] = return_data.size
                        mem[_18802 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_18802 + 32]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19636 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19638 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19638:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19638 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19638 + _19636 + -mem[64] + 68
                            mem[floor32(_19638) + _19636 + 68] = mem[floor32(_19638) + _19636 + -(_19638 % 32) + 100 len _19638 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19638) + _19636 + -mem[64] + 100
                    if totalCap * arg2 / arg2 != totalCap:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if totalCap * arg2 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= totalCap * arg2 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19624 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19626 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19626) + _19624 + -mem[64] + 100
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19626:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19626 % 32:
                            revert with 0, 32, mem[mem[64] + 36 len _19626 + 32]
                        mem[floor32(_19626) + mem[64] + 68] = mem[floor32(_19626) + mem[64] + -(_19626 % 32) + 100 len _19626 % 32]
                        revert with 0, 32, mem[mem[64] + 36 len floor32(_19626) + 64]
                    _18799 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18799] = return_data.size
                    mem[_18799 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18799 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19628 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19630 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19630:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19630 % 32:
                            revert with memory
                              from mem[64]
                               len _19630 + _19628 + -mem[64] + 68
                        mem[floor32(_19630) + _19628 + 68] = mem[floor32(_19630) + _19628 + -(_19630 % 32) + 100 len _19630 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19630) + _19628 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19616 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19618 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19618:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19618 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19618 + _19616 + -mem[64] + 68
                            mem[floor32(_19618) + _19616 + 68] = mem[floor32(_19618) + _19616 + -(_19618 % 32) + 100 len _19618 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19618) + _19616 + -mem[64] + 100
                    _18796 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18796] = return_data.size
                    mem[_18796 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18796 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19620 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19622 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19622:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19622 % 32:
                            revert with memory
                              from mem[64]
                               len _19622 + _19620 + -mem[64] + 68
                        mem[floor32(_19622) + _19620 + 68] = mem[floor32(_19622) + _19620 + -(_19622 % 32) + 100 len _19622 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19622) + _19620 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19608 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19610 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19610:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19610 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19610 + _19608 + -mem[64] + 68
                            mem[floor32(_19610) + _19608 + 68] = mem[floor32(_19610) + _19608 + -(_19610 % 32) + 100 len _19610 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19610) + _19608 + -mem[64] + 100
                    _18793 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18793] = return_data.size
                    mem[_18793 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18793 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19612 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19614 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19614:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19614 % 32:
                            revert with memory
                              from mem[64]
                               len _19614 + _19612 + -mem[64] + 68
                        mem[floor32(_19614) + _19612 + 68] = mem[floor32(_19614) + _19612 + -(_19614 % 32) + 100 len _19614 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19614) + _19612 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19600 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19602 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19602:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19602 % 32:
                            revert with memory
                              from mem[64]
                               len _19602 + _19600 + -mem[64] + 68
                        mem[floor32(_19602) + _19600 + 68] = mem[floor32(_19602) + _19600 + -(_19602 % 32) + 100 len _19602 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19602) + _19600 + -mem[64] + 100
                _18790 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18790] = return_data.size
                mem[_18790 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18790 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19604 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19606 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19606:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19606 % 32:
                        revert with memory
                          from mem[64]
                           len _19606 + _19604 + -mem[64] + 68
                    mem[floor32(_19606) + _19604 + 68] = mem[floor32(_19606) + _19604 + -(_19606 % 32) + 100 len _19606 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19606) + _19604 + -mem[64] + 100
            sub_c9e582f1 = uint64(call.data[164])
            mcr = call.data[132]
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if sub_7fd74ea2 + mcr >= totalCap:
                revert with 0, 
                            32,
                            67,
                            0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                            mem[ceil32(arg3.length) + 647 len 29]
            if paused:
                revert with 0, 'Cannot withdraw when paused'
            if totalSupply <= 0:
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19736 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19738 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19738:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19738 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19738 + _19736 + -mem[64] + 68
                            mem[floor32(_19738) + _19736 + 68] = mem[floor32(_19738) + _19736 + -(_19738 % 32) + 100 len _19738 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19738) + _19736 + -mem[64] + 100
                    _18841 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18841] = return_data.size
                    mem[_18841 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18841 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19740 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19742 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19742:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19742 % 32:
                            revert with memory
                              from mem[64]
                               len _19742 + _19740 + -mem[64] + 68
                        mem[floor32(_19742) + _19740 + 68] = mem[floor32(_19742) + _19740 + -(_19742 % 32) + 100 len _19742 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19742) + _19740 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19728 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19730 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19730:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19730 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19730 + _19728 + -mem[64] + 68
                            mem[floor32(_19730) + _19728 + 68] = mem[floor32(_19730) + _19728 + -(_19730 % 32) + 100 len _19730 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19730) + _19728 + -mem[64] + 100
                    _18838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18838] = return_data.size
                    mem[_18838 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18838 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19732 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19734 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19734) + _19732 + -mem[64] + 100
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19734:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19734 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _19734 + 32]
                    mem[floor32(_19734) + mem[64] + 68] = mem[floor32(_19734) + mem[64] + -(_19734 % 32) + 100 len _19734 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_19734) + 64]
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19720 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19722 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19722:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19722 % 32:
                            revert with memory
                              from mem[64]
                               len _19722 + _19720 + -mem[64] + 68
                        mem[floor32(_19722) + _19720 + 68] = mem[floor32(_19722) + _19720 + -(_19722 % 32) + 100 len _19722 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19722) + _19720 + -mem[64] + 100
                _18835 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18835] = return_data.size
                mem[_18835 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18835 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19724 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19726 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19726:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19726 % 32:
                        revert with memory
                          from mem[64]
                           len _19726 + _19724 + -mem[64] + 68
                    mem[floor32(_19726) + _19724 + 68] = mem[floor32(_19726) + _19724 + -(_19726 % 32) + 100 len _19726 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19726) + _19724 + -mem[64] + 100
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19712 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19714 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19714:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19714 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19714 + _19712 + -mem[64] + 68
                            mem[floor32(_19714) + _19712 + 68] = mem[floor32(_19714) + _19712 + -(_19714 % 32) + 100 len _19714 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19714) + _19712 + -mem[64] + 100
                    _18832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18832] = return_data.size
                    mem[_18832 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18832 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19716 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19718 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19718:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19718 % 32:
                            revert with memory
                              from mem[64]
                               len _19718 + _19716 + -mem[64] + 68
                        mem[floor32(_19718) + _19716 + 68] = mem[floor32(_19718) + _19716 + -(_19718 % 32) + 100 len _19718 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19718) + _19716 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19704 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19706 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                            revert with memory
                              from mem[64]
                               len floor32(_19706) + _19704 + -mem[64] + 100
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19706:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19706 % 32:
                            revert with 0, 32, mem[mem[64] + 36 len _19706 + 32]
                        mem[floor32(_19706) + mem[64] + 68] = mem[floor32(_19706) + mem[64] + -(_19706 % 32) + 100 len _19706 % 32]
                        revert with 0, 32, mem[mem[64] + 36 len floor32(_19706) + 64]
                    _18829 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18829] = return_data.size
                    mem[_18829 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18829 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19708 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19710 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19710:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19710 % 32:
                            revert with memory
                              from mem[64]
                               len _19710 + _19708 + -mem[64] + 68
                        mem[floor32(_19710) + _19708 + 68] = mem[floor32(_19710) + _19708 + -(_19710 % 32) + 100 len _19710 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19710) + _19708 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19698 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19698:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19698 % 32:
                            revert with memory
                              from mem[64]
                               len _19698 + _19696 + -mem[64] + 68
                        mem[floor32(_19698) + _19696 + 68] = mem[floor32(_19698) + _19696 + -(_19698 % 32) + 100 len _19698 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19698) + _19696 + -mem[64] + 100
                _18826 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18826] = return_data.size
                mem[_18826 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18826 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19700 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19702 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19702:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19702 % 32:
                        revert with memory
                          from mem[64]
                           len _19702 + _19700 + -mem[64] + 68
                    mem[floor32(_19702) + _19700 + 68] = mem[floor32(_19702) + _19700 + -(_19702 % 32) + 100 len _19702 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19702) + _19700 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[333 len 19],
                            mem[ceil32(arg3.length) + 640 len 4]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if arg2 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg2
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = arg2
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19688 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19690 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19690:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19690 % 32:
                            revert with memory
                              from mem[64]
                               len _19690 + _19688 + -mem[64] + 68
                        mem[floor32(_19690) + _19688 + 68] = mem[floor32(_19690) + _19688 + -(_19690 % 32) + 100 len _19690 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19690) + _19688 + -mem[64] + 100
                _18823 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18823] = return_data.size
                mem[_18823 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18823 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw(arg2, msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19692 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19694 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19694:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19694 % 32:
                        revert with memory
                          from mem[64]
                           len _19694 + _19692 + -mem[64] + 68
                    mem[floor32(_19694) + _19692 + 68] = mem[floor32(_19694) + _19692 + -(_19694 % 32) + 100 len _19694 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19694) + _19692 + -mem[64] + 100
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= 0 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19680 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19682 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19682:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19682 % 32:
                            revert with memory
                              from mem[64]
                               len _19682 + _19680 + -mem[64] + 68
                        mem[floor32(_19682) + _19680 + 68] = mem[floor32(_19682) + _19680 + -(_19682 % 32) + 100 len _19682 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19682) + _19680 + -mem[64] + 100
                _18820 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18820] = return_data.size
                mem[_18820 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18820 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19684 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19686 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19686:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19686 % 32:
                        revert with memory
                          from mem[64]
                           len _19686 + _19684 + -mem[64] + 68
                    mem[floor32(_19686) + _19684 + 68] = mem[floor32(_19686) + _19684 + -(_19686 % 32) + 100 len _19686 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19686) + _19684 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= totalCap * arg2 / totalSupply
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 612] = 32
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
            mem[0] = msg.sender
            mem[32] = 151
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[64] = ceil32(arg3.length) + 772
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            s = ceil32(arg3.length) + 640
            t = mem[64]
            idx = mem[ceil32(arg3.length) + 608]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
            call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _19672 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19674 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19674:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19674 % 32:
                        revert with memory
                          from mem[64]
                           len _19674 + _19672 + -mem[64] + 68
                    mem[floor32(_19674) + _19672 + 68] = mem[floor32(_19674) + _19672 + -(_19674 % 32) + 100 len _19674 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19674) + _19672 + -mem[64] + 100
            _18817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_18817] = return_data.size
            mem[_18817 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_18817 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _19676 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
            _19678 = mem[ceil32(arg3.length) + 708]
            if not mem[ceil32(arg3.length) + 708]:
                if not mem[ceil32(arg3.length) + 708] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19678) + _19676 + -mem[64] + 100
            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
            idx = 32
            while idx < _19678:
                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                idx = idx + 32
                continue 
            if not _19678 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _19678 + 32]
            mem[floor32(_19678) + mem[64] + 68] = mem[floor32(_19678) + mem[64] + -(_19678 % 32) + 100 len _19678 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_19678) + 64]
        mem[0] = 1
        mem[32] = sha3(0, 223)
        if uint64(stor223[0][1]) <= uint64(call.data[164]):
            if Mask(192, 0, uint256(stor223[0][1])) >> 64 > sub_7fd74ea2:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_7fd74ea2 -= Mask(192, 0, uint256(stor223[0][1])) >> 64
            if uint256(stor223[0][1]):
                if uint256(stor223[uint256(stor223[0][1])][0]):
                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                    uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                    mem[32] = sha3(uint256(stor223[0][1]), 223)
                    uint256(stor223[uint256(stor223[0][1])][0]) = 0
                    mem[0] = 1
                    uint256(stor223[uint256(stor223[0][1])][1]) = 0
                    stor222--
                else:
                    if uint256(stor223[uint256(stor223[0][1])][1]):
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                        uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                        mem[32] = sha3(uint256(stor223[0][1]), 223)
                        uint256(stor223[uint256(stor223[0][1])][0]) = 0
                        mem[0] = 1
                        uint256(stor223[uint256(stor223[0][1])][1]) = 0
                        stor222--
                    else:
                        mem[0] = 1
                        mem[32] = sha3(0, 223)
                        if uint256(stor223[0][1]) == uint256(stor223[0][1]):
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][1])][0]) = uint256(stor223[uint256(stor223[0][1])][0])
                            uint256(stor223[uint256(stor223[uint256(stor223[0][1])][0])][1]) = uint256(stor223[uint256(stor223[0][1])][1])
                            mem[32] = sha3(uint256(stor223[0][1]), 223)
                            uint256(stor223[uint256(stor223[0][1])][0]) = 0
                            mem[0] = 1
                            uint256(stor223[uint256(stor223[0][1])][1]) = 0
                            stor222--
            idx = idx + 1
            continue 
        if uint64(call.data[164]) <= sub_c9e582f1:
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if sub_7fd74ea2 + mcr >= totalCap:
                revert with 0, 
                            32,
                            67,
                            0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                            mem[ceil32(arg3.length) + 647 len 29]
            if paused:
                revert with 0, 'Cannot withdraw when paused'
            if totalSupply <= 0:
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19808 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19810 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19810:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19810 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19810 + _19808 + -mem[64] + 68
                            mem[floor32(_19810) + _19808 + 68] = mem[floor32(_19810) + _19808 + -(_19810 % 32) + 100 len _19810 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19810) + _19808 + -mem[64] + 100
                    _18868 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18868] = return_data.size
                    mem[_18868 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18868 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19812 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19814 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19814:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19814 % 32:
                            revert with memory
                              from mem[64]
                               len _19814 + _19812 + -mem[64] + 68
                        mem[floor32(_19814) + _19812 + 68] = mem[floor32(_19814) + _19812 + -(_19814 % 32) + 100 len _19814 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19814) + _19812 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19800 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19802 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19802:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19802 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19802 + _19800 + -mem[64] + 68
                            mem[floor32(_19802) + _19800 + 68] = mem[floor32(_19802) + _19800 + -(_19802 % 32) + 100 len _19802 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19802) + _19800 + -mem[64] + 100
                    _18865 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18865] = return_data.size
                    mem[_18865 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18865 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19804 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19806 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19806) + _19804 + -mem[64] + 100
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19806:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19806 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _19806 + 32]
                    mem[floor32(_19806) + mem[64] + 68] = mem[floor32(_19806) + mem[64] + -(_19806 % 32) + 100 len _19806 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_19806) + 64]
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19794 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19794:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19794 % 32:
                            revert with memory
                              from mem[64]
                               len _19794 + _19792 + -mem[64] + 68
                        mem[floor32(_19794) + _19792 + 68] = mem[floor32(_19794) + _19792 + -(_19794 % 32) + 100 len _19794 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19794) + _19792 + -mem[64] + 100
                _18862 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18862] = return_data.size
                mem[_18862 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18862 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19796 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19798 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19798:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19798 % 32:
                        revert with memory
                          from mem[64]
                           len _19798 + _19796 + -mem[64] + 68
                    mem[floor32(_19798) + _19796 + 68] = mem[floor32(_19798) + _19796 + -(_19798 % 32) + 100 len _19798 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19798) + _19796 + -mem[64] + 100
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if sub_7fd74ea2 + mcr < mcr:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                    revert with 0, 
                                32,
                                41,
                                0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                                mem[333 len 19],
                                mem[ceil32(arg3.length) + 640 len 4]
                if not totalSupply:
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if arg2 > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= arg2
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = arg2
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw(arg2, msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19784 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19786 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19786:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19786 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19786 + _19784 + -mem[64] + 68
                            mem[floor32(_19786) + _19784 + 68] = mem[floor32(_19786) + _19784 + -(_19786 % 32) + 100 len _19786 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19786) + _19784 + -mem[64] + 100
                    _18859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18859] = return_data.size
                    mem[_18859 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18859 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19788 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19790 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19790:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19790 % 32:
                            revert with memory
                              from mem[64]
                               len _19790 + _19788 + -mem[64] + 68
                        mem[floor32(_19790) + _19788 + 68] = mem[floor32(_19790) + _19788 + -(_19790 % 32) + 100 len _19790 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19790) + _19788 + -mem[64] + 100
                if not arg2:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    require ext_code.size(sub_ae61fd8dAddress)
                    staticcall sub_ae61fd8dAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 / totalSupply > ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    56,
                                    0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                    mem[348 len 4],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if 0 / totalSupply > totalCap:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalCap -= 0 / totalSupply
                    if not msg.sender:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                    mem[325 len 27],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                        revert with 0, 'Withdrawal is locked up'
                    require ext_code.size(stor235)
                    staticcall stor235.0x5ea308d8 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                    mem[332 len 20],
                                    mem[ceil32(arg3.length) + 640 len 4]
                    mem[ceil32(arg3.length) + 512] = 34
                    mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 612] = 32
                        idx = 0
                        while idx < 34:
                            mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                            idx = idx + 32
                            continue 
                        mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                        revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                    mem[0] = msg.sender
                    mem[32] = 151
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg2
                    emit Transfer(arg2, msg.sender, 0);
                    mem[ceil32(arg3.length) + 644] = msg.sender
                    mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                    mem[ceil32(arg3.length) + 608] = 68
                    mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[64] = ceil32(arg3.length) + 772
                    mem[ceil32(arg3.length) + 708] = 32
                    mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg3.length) + 878 len 26]
                    if not ext_code.size(sub_ae61fd8dAddress):
                        revert with 0, 'Address: call to non-contract'
                    s = ceil32(arg3.length) + 640
                    t = mem[64]
                    idx = mem[ceil32(arg3.length) + 608]
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                    call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                    if not return_data.size:
                        if ext_call.success:
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[mem[64] + 110 len 22]
                            emit Withdraw((0 / totalSupply), msg.sender);
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        _19776 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                        _19778 = mem[ceil32(arg3.length) + 708]
                        if not mem[ceil32(arg3.length) + 708]:
                            if not mem[ceil32(arg3.length) + 708] % 32:
                                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        else:
                            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                            idx = 32
                            while idx < _19778:
                                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                                idx = idx + 32
                                continue 
                            if not _19778 % 32:
                                revert with memory
                                  from mem[64]
                                   len _19778 + _19776 + -mem[64] + 68
                            mem[floor32(_19778) + _19776 + 68] = mem[floor32(_19778) + _19776 + -(_19778 % 32) + 100 len _19778 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19778) + _19776 + -mem[64] + 100
                    _18856 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_18856] = return_data.size
                    mem[_18856 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_18856 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    _19780 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19782 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19782:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19782 % 32:
                            revert with memory
                              from mem[64]
                               len _19782 + _19780 + -mem[64] + 68
                        mem[floor32(_19782) + _19780 + 68] = mem[floor32(_19782) + _19780 + -(_19782 % 32) + 100 len _19782 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19782) + _19780 + -mem[64] + 100
                if totalCap * arg2 / arg2 != totalCap:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if totalCap * arg2 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= totalCap * arg2 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19770 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19770:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19770 % 32:
                            revert with memory
                              from mem[64]
                               len _19770 + _19768 + -mem[64] + 68
                        mem[floor32(_19770) + _19768 + 68] = mem[floor32(_19770) + _19768 + -(_19770 % 32) + 100 len _19770 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19770) + _19768 + -mem[64] + 100
                _18853 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18853] = return_data.size
                mem[_18853 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18853 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19772 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19774 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19774:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19774 % 32:
                        revert with memory
                          from mem[64]
                           len _19774 + _19772 + -mem[64] + 68
                    mem[floor32(_19774) + _19772 + 68] = mem[floor32(_19774) + _19772 + -(_19774 % 32) + 100 len _19774 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19774) + _19772 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[333 len 19],
                            mem[ceil32(arg3.length) + 640 len 4]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if arg2 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg2
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = arg2
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19760 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19762 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19762:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19762 % 32:
                            revert with memory
                              from mem[64]
                               len _19762 + _19760 + -mem[64] + 68
                        mem[floor32(_19762) + _19760 + 68] = mem[floor32(_19762) + _19760 + -(_19762 % 32) + 100 len _19762 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19762) + _19760 + -mem[64] + 100
                _18850 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18850] = return_data.size
                mem[_18850 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18850 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw(arg2, msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19764 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19766 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19766:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19766 % 32:
                        revert with memory
                          from mem[64]
                           len _19766 + _19764 + -mem[64] + 68
                    mem[floor32(_19766) + _19764 + 68] = mem[floor32(_19766) + _19764 + -(_19766 % 32) + 100 len _19766 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19766) + _19764 + -mem[64] + 100
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= 0 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19752 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19754 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19754:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19754 % 32:
                            revert with memory
                              from mem[64]
                               len _19754 + _19752 + -mem[64] + 68
                        mem[floor32(_19754) + _19752 + 68] = mem[floor32(_19754) + _19752 + -(_19754 % 32) + 100 len _19754 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19754) + _19752 + -mem[64] + 100
                _18847 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18847] = return_data.size
                mem[_18847 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18847 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19756 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19758 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19758:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19758 % 32:
                        revert with memory
                          from mem[64]
                           len _19758 + _19756 + -mem[64] + 68
                    mem[floor32(_19758) + _19756 + 68] = mem[floor32(_19758) + _19756 + -(_19758 % 32) + 100 len _19758 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19758) + _19756 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= totalCap * arg2 / totalSupply
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 612] = 32
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
            mem[0] = msg.sender
            mem[32] = 151
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[64] = ceil32(arg3.length) + 772
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            s = ceil32(arg3.length) + 640
            t = mem[64]
            idx = mem[ceil32(arg3.length) + 608]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
            call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _19744 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19746 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19746:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19746 % 32:
                        revert with memory
                          from mem[64]
                           len _19746 + _19744 + -mem[64] + 68
                    mem[floor32(_19746) + _19744 + 68] = mem[floor32(_19746) + _19744 + -(_19746 % 32) + 100 len _19746 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19746) + _19744 + -mem[64] + 100
            _18844 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_18844] = return_data.size
            mem[_18844 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_18844 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _19748 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
            _19750 = mem[ceil32(arg3.length) + 708]
            if not mem[ceil32(arg3.length) + 708]:
                if not mem[ceil32(arg3.length) + 708] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
            else:
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                idx = 32
                while idx < _19750:
                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                    idx = idx + 32
                    continue 
                if not _19750 % 32:
                    revert with memory
                      from mem[64]
                       len _19750 + _19748 + -mem[64] + 68
                mem[floor32(_19750) + _19748 + 68] = mem[floor32(_19750) + _19748 + -(_19750 % 32) + 100 len _19750 % 32]
            revert with memory
              from mem[64]
               len floor32(_19750) + _19748 + -mem[64] + 100
        sub_c9e582f1 = uint64(call.data[164])
        mcr = call.data[132]
        if sub_7fd74ea2 + mcr < mcr:
            revert with 0, 'SafeMath: addition overflow'
        if sub_7fd74ea2 + mcr >= totalCap:
            revert with 0, 
                        32,
                        67,
                        0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                        mem[ceil32(arg3.length) + 647 len 29]
        if paused:
            revert with 0, 'Cannot withdraw when paused'
        if totalSupply <= 0:
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[333 len 19],
                            mem[ceil32(arg3.length) + 640 len 4]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if arg2 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg2
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = arg2
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19880 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19882 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19882:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19882 % 32:
                            revert with memory
                              from mem[64]
                               len _19882 + _19880 + -mem[64] + 68
                        mem[floor32(_19882) + _19880 + 68] = mem[floor32(_19882) + _19880 + -(_19882 % 32) + 100 len _19882 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19882) + _19880 + -mem[64] + 100
                _18895 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18895] = return_data.size
                mem[_18895 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18895 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw(arg2, msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19884 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19886 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19886:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19886 % 32:
                        revert with memory
                          from mem[64]
                           len _19886 + _19884 + -mem[64] + 68
                    mem[floor32(_19886) + _19884 + 68] = mem[floor32(_19886) + _19884 + -(_19886 % 32) + 100 len _19886 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19886) + _19884 + -mem[64] + 100
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= 0 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19872 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19874 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19874:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19874 % 32:
                            revert with memory
                              from mem[64]
                               len _19874 + _19872 + -mem[64] + 68
                        mem[floor32(_19874) + _19872 + 68] = mem[floor32(_19874) + _19872 + -(_19874 % 32) + 100 len _19874 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19874) + _19872 + -mem[64] + 100
                _18892 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18892] = return_data.size
                mem[_18892 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18892 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19876 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19878 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19878:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19878 % 32:
                        revert with memory
                          from mem[64]
                           len _19878 + _19876 + -mem[64] + 68
                    mem[floor32(_19878) + _19876 + 68] = mem[floor32(_19878) + _19876 + -(_19878 % 32) + 100 len _19878 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19878) + _19876 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= totalCap * arg2 / totalSupply
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 612] = 32
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
            mem[0] = msg.sender
            mem[32] = 151
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[64] = ceil32(arg3.length) + 772
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            s = ceil32(arg3.length) + 640
            t = mem[64]
            idx = mem[ceil32(arg3.length) + 608]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
            call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _19864 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19866 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19866:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19866 % 32:
                        revert with memory
                          from mem[64]
                           len _19866 + _19864 + -mem[64] + 68
                    mem[floor32(_19866) + _19864 + 68] = mem[floor32(_19866) + _19864 + -(_19866 % 32) + 100 len _19866 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19866) + _19864 + -mem[64] + 100
            _18889 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_18889] = return_data.size
            mem[_18889 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_18889 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _19868 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
            _19870 = mem[ceil32(arg3.length) + 708]
            if not mem[ceil32(arg3.length) + 708]:
                if not mem[ceil32(arg3.length) + 708] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19870) + _19868 + -mem[64] + 100
            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
            idx = 32
            while idx < _19870:
                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                idx = idx + 32
                continue 
            if not _19870 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _19870 + 32]
            mem[floor32(_19870) + mem[64] + 68] = mem[floor32(_19870) + mem[64] + -(_19870 % 32) + 100 len _19870 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_19870) + 64]
        if not arg2:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[333 len 19],
                            mem[ceil32(arg3.length) + 640 len 4]
            if not totalSupply:
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if arg2 > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= arg2
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = arg2
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw(arg2, msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19856 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19858 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_19858) + _19856 + -mem[64] + 100
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19858:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19858 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _19858 + 32]
                    mem[floor32(_19858) + mem[64] + 68] = mem[floor32(_19858) + mem[64] + -(_19858 % 32) + 100 len _19858 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_19858) + 64]
                _18886 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18886] = return_data.size
                mem[_18886 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18886 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw(arg2, msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19860 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19862 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19862:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19862 % 32:
                        revert with memory
                          from mem[64]
                           len _19862 + _19860 + -mem[64] + 68
                    mem[floor32(_19862) + _19860 + 68] = mem[floor32(_19862) + _19860 + -(_19862 % 32) + 100 len _19862 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19862) + _19860 + -mem[64] + 100
            if not arg2:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                require ext_code.size(sub_ae61fd8dAddress)
                staticcall sub_ae61fd8dAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                56,
                                0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                                mem[348 len 4],
                                mem[ceil32(arg3.length) + 640 len 4]
                if 0 / totalSupply > totalCap:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalCap -= 0 / totalSupply
                if not msg.sender:
                    revert with 0, 
                                32,
                                33,
                                0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[325 len 27],
                                mem[ceil32(arg3.length) + 640 len 4]
                if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                    revert with 0, 'Withdrawal is locked up'
                require ext_code.size(stor235)
                staticcall stor235.0x5ea308d8 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                40,
                                0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                                mem[332 len 20],
                                mem[ceil32(arg3.length) + 640 len 4]
                mem[ceil32(arg3.length) + 512] = 34
                mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 612] = 32
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                        idx = idx + 32
                        continue 
                    mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                    revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
                mem[0] = msg.sender
                mem[32] = 151
                balanceOf[address(msg.sender)] -= arg2
                if arg2 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg2
                emit Transfer(arg2, msg.sender, 0);
                mem[ceil32(arg3.length) + 644] = msg.sender
                mem[ceil32(arg3.length) + 676] = 0 / totalSupply
                mem[ceil32(arg3.length) + 608] = 68
                mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[64] = ceil32(arg3.length) + 772
                mem[ceil32(arg3.length) + 708] = 32
                mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg3.length) + 878 len 26]
                if not ext_code.size(sub_ae61fd8dAddress):
                    revert with 0, 'Address: call to non-contract'
                s = ceil32(arg3.length) + 640
                t = mem[64]
                idx = mem[ceil32(arg3.length) + 608]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
                call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        emit Withdraw((0 / totalSupply), msg.sender);
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _19848 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                    _19850 = mem[ceil32(arg3.length) + 708]
                    if not mem[ceil32(arg3.length) + 708]:
                        if not mem[ceil32(arg3.length) + 708] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                        mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    else:
                        mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                        idx = 32
                        while idx < _19850:
                            mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                            idx = idx + 32
                            continue 
                        if not _19850 % 32:
                            revert with memory
                              from mem[64]
                               len _19850 + _19848 + -mem[64] + 68
                        mem[floor32(_19850) + _19848 + 68] = mem[floor32(_19850) + _19848 + -(_19850 % 32) + 100 len _19850 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19850) + _19848 + -mem[64] + 100
                _18883 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_18883] = return_data.size
                mem[_18883 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_18883 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _19852 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19854 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19854:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19854 % 32:
                        revert with memory
                          from mem[64]
                           len _19854 + _19852 + -mem[64] + 68
                    mem[floor32(_19854) + _19852 + 68] = mem[floor32(_19854) + _19852 + -(_19854 % 32) + 100 len _19854 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19854) + _19852 + -mem[64] + 100
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= totalCap * arg2 / totalSupply
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 612] = 32
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
            mem[0] = msg.sender
            mem[32] = 151
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[64] = ceil32(arg3.length) + 772
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            s = ceil32(arg3.length) + 640
            t = mem[64]
            idx = mem[ceil32(arg3.length) + 608]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
            call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _19840 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19842 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19842:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19842 % 32:
                        revert with memory
                          from mem[64]
                           len _19842 + _19840 + -mem[64] + 68
                    mem[floor32(_19842) + _19840 + 68] = mem[floor32(_19842) + _19840 + -(_19842 % 32) + 100 len _19842 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19842) + _19840 + -mem[64] + 100
            _18880 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_18880] = return_data.size
            mem[_18880 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_18880 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _19844 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
            _19846 = mem[ceil32(arg3.length) + 708]
            if not mem[ceil32(arg3.length) + 708]:
                if not mem[ceil32(arg3.length) + 708] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
            else:
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                idx = 32
                while idx < _19846:
                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                    idx = idx + 32
                    continue 
                if not _19846 % 32:
                    revert with memory
                      from mem[64]
                       len _19846 + _19844 + -mem[64] + 68
                mem[floor32(_19846) + _19844 + 68] = mem[floor32(_19846) + _19844 + -(_19846 % 32) + 100 len _19846 % 32]
            revert with memory
              from mem[64]
               len floor32(_19846) + _19844 + -mem[64] + 100
        if totalCap * arg2 / arg2 != totalCap:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[325 len 27],
                        mem[ceil32(arg3.length) + 640 len 4]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if sub_7fd74ea2 + mcr < mcr:
            revert with 0, 'SafeMath: addition overflow'
        if totalCap * arg2 / totalSupply > totalCap:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
            revert with 0, 
                        32,
                        41,
                        0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                        mem[333 len 19],
                        mem[ceil32(arg3.length) + 640 len 4]
        if not totalSupply:
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if arg2 > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= arg2
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 612] = 32
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
            mem[0] = msg.sender
            mem[32] = 151
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = arg2
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[64] = ceil32(arg3.length) + 772
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            s = ceil32(arg3.length) + 640
            t = mem[64]
            idx = mem[ceil32(arg3.length) + 608]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
            call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw(arg2, msg.sender);
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _19832 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19834 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                else:
                    mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                    idx = 32
                    while idx < _19834:
                        mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                        idx = idx + 32
                        continue 
                    if not _19834 % 32:
                        revert with memory
                          from mem[64]
                           len _19834 + _19832 + -mem[64] + 68
                    mem[floor32(_19834) + _19832 + 68] = mem[floor32(_19834) + _19832 + -(_19834 % 32) + 100 len _19834 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19834) + _19832 + -mem[64] + 100
            _18877 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_18877] = return_data.size
            mem[_18877 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_18877 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                emit Withdraw(arg2, msg.sender);
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _19836 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
            _19838 = mem[ceil32(arg3.length) + 708]
            if not mem[ceil32(arg3.length) + 708]:
                if not mem[ceil32(arg3.length) + 708] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
            else:
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                idx = 32
                while idx < _19838:
                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                    idx = idx + 32
                    continue 
                if not _19838 % 32:
                    revert with memory
                      from mem[64]
                       len _19838 + _19836 + -mem[64] + 68
                mem[floor32(_19838) + _19836 + 68] = mem[floor32(_19838) + _19836 + -(_19838 % 32) + 100 len _19838 % 32]
            revert with memory
              from mem[64]
               len floor32(_19838) + _19836 + -mem[64] + 100
        if not arg2:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / totalSupply > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if 0 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= 0 / totalSupply
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 612] = 32
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                    idx = idx + 32
                    continue 
                mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
                revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
            mem[0] = msg.sender
            mem[32] = 151
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = 0 / totalSupply
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
            mem[64] = ceil32(arg3.length) + 772
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            s = ceil32(arg3.length) + 640
            t = mem[64]
            idx = mem[ceil32(arg3.length) + 608]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
            call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    emit Withdraw((0 / totalSupply), msg.sender);
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _19824 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
                _19826 = mem[ceil32(arg3.length) + 708]
                if not mem[ceil32(arg3.length) + 708]:
                    if not mem[ceil32(arg3.length) + 708] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                    mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_19826) + _19824 + -mem[64] + 100
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                idx = 32
                while idx < _19826:
                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                    idx = idx + 32
                    continue 
                if not _19826 % 32:
                    revert with 0, 32, mem[mem[64] + 36 len _19826 + 32]
                mem[floor32(_19826) + mem[64] + 68] = mem[floor32(_19826) + mem[64] + -(_19826 % 32) + 100 len _19826 % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_19826) + 64]
            _18874 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_18874] = return_data.size
            mem[_18874 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_18874 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                emit Withdraw((0 / totalSupply), msg.sender);
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _19828 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
            _19830 = mem[ceil32(arg3.length) + 708]
            if not mem[ceil32(arg3.length) + 708]:
                if not mem[ceil32(arg3.length) + 708] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_19830) + _19828 + -mem[64] + 100
            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
            idx = 32
            while idx < _19830:
                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                idx = idx + 32
                continue 
            if not _19830 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _19830 + 32]
            mem[floor32(_19830) + mem[64] + 68] = mem[floor32(_19830) + mem[64] + -(_19830 % 32) + 100 len _19830 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_19830) + 64]
        if totalCap * arg2 / arg2 != totalCap:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[325 len 27],
                        mem[ceil32(arg3.length) + 640 len 4]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        require ext_code.size(sub_ae61fd8dAddress)
        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
            revert with 0, 
                        32,
                        56,
                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                        mem[348 len 4],
                        mem[ceil32(arg3.length) + 640 len 4]
        if totalCap * arg2 / totalSupply > totalCap:
            revert with 0, 'SafeMath: subtraction overflow'
        totalCap -= totalCap * arg2 / totalSupply
        if not msg.sender:
            revert with 0, 
                        32,
                        33,
                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[325 len 27],
                        mem[ceil32(arg3.length) + 640 len 4]
        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
            revert with 0, 'Withdrawal is locked up'
        require ext_code.size(stor235)
        staticcall stor235.0x5ea308d8 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        40,
                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                        mem[332 len 20],
                        mem[ceil32(arg3.length) + 640 len 4]
        mem[ceil32(arg3.length) + 512] = 34
        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg2 > balanceOf[address(msg.sender)]:
            mem[ceil32(arg3.length) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 612] = 32
            idx = 0
            while idx < 34:
                mem[idx + ceil32(arg3.length) + 676] = mem[idx + ceil32(arg3.length) + 544]
                idx = idx + 32
                continue 
            mem[ceil32(arg3.length) + 708] = mem[ceil32(arg3.length) + 738 len 2]
            revert with 0, 32, 34, mem[ceil32(arg3.length) + 676 len 64]
        mem[0] = msg.sender
        mem[32] = 151
        balanceOf[address(msg.sender)] -= arg2
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        emit Transfer(arg2, msg.sender, 0);
        mem[ceil32(arg3.length) + 644] = msg.sender
        mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
        mem[ceil32(arg3.length) + 608] = 68
        mem[ceil32(arg3.length) + 640] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
        mem[64] = ceil32(arg3.length) + 772
        mem[ceil32(arg3.length) + 708] = 32
        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(arg3.length) + 878 len 26]
        if not ext_code.size(sub_ae61fd8dAddress):
            revert with 0, 'Address: call to non-contract'
        s = ceil32(arg3.length) + 640
        t = mem[64]
        idx = mem[ceil32(arg3.length) + 608]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])] = mem[ceil32(arg3.length) + floor32(mem[ceil32(arg3.length) + 608]) + -(mem[ceil32(arg3.length) + 608] % 32) + 672 len mem[ceil32(arg3.length) + 608] % 32] or Mask(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32, -(8 * -(mem[ceil32(arg3.length) + 608] % 32) + 32) + 256, mem[mem[64] + floor32(mem[ceil32(arg3.length) + 608])])
        call sub_ae61fd8dAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(arg3.length) + -mem[64] + 836]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            _19816 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
            _19818 = mem[ceil32(arg3.length) + 708]
            if not mem[ceil32(arg3.length) + 708]:
                if not mem[ceil32(arg3.length) + 708] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
                mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
            else:
                mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
                idx = 32
                while idx < _19818:
                    mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                    idx = idx + 32
                    continue 
                if not _19818 % 32:
                    revert with memory
                      from mem[64]
                       len _19818 + _19816 + -mem[64] + 68
                mem[floor32(_19818) + _19816 + 68] = mem[floor32(_19818) + _19816 + -(_19818 % 32) + 100 len _19818 % 32]
            revert with memory
              from mem[64]
               len floor32(_19818) + _19816 + -mem[64] + 100
        _18871 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_18871] = return_data.size
        mem[_18871 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                if not mem[_18871 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
            emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        _19820 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[ceil32(arg3.length) + 708]
        _19822 = mem[ceil32(arg3.length) + 708]
        if not mem[ceil32(arg3.length) + 708]:
            if not mem[ceil32(arg3.length) + 708] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[ceil32(arg3.length) + 708] + 32]
            mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + 68] = mem[floor32(mem[ceil32(arg3.length) + 708]) + mem[64] + -(mem[ceil32(arg3.length) + 708] % 32) + 100 len mem[ceil32(arg3.length) + 708] % 32]
        else:
            mem[mem[64] + 68] = mem[ceil32(arg3.length) + 740]
            idx = 32
            while idx < _19822:
                mem[idx + mem[64] + 68] = mem[idx + ceil32(arg3.length) + 740]
                idx = idx + 32
                continue 
            if not _19822 % 32:
                revert with memory
                  from mem[64]
                   len _19822 + _19820 + -mem[64] + 68
            mem[floor32(_19822) + _19820 + 68] = mem[floor32(_19822) + _19820 + -(_19822 % 32) + 100 len _19822 % 32]
        revert with memory
          from mem[64]
           len floor32(_19822) + _19820 + -mem[64] + 100
    if call.data[188 len 8] > sub_c9e582f1:
        sub_c9e582f1 = call.data[188 len 8]
        mcr = call.data[132]
    if sub_7fd74ea2 + mcr < mcr:
        revert with 0, 'SafeMath: addition overflow'
    if sub_7fd74ea2 + mcr >= totalCap:
        revert with 0, 
                    32,
                    67,
                    0x734d435220657863656564656420746f74616c4361702c2063616e6e6f742069737375652070726f74656374696f6e73206f7220776974686472617720636170697461,
                    mem[ceil32(arg3.length) + 647 len 29]
    if paused:
        revert with 0, 'Cannot withdraw when paused'
    if totalSupply <= 0:
        if sub_7fd74ea2 + mcr < mcr:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > totalCap:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalCap <= sub_7fd74ea2 + mcr:
            revert with 0, 
                        32,
                        41,
                        0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                        mem[333 len 19],
                        mem[ceil32(arg3.length) + 640 len 4]
    else:
        if not arg2:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (0 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[333 len 19],
                            mem[ceil32(arg3.length) + 640 len 4]
        else:
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if sub_7fd74ea2 + mcr < mcr:
                revert with 0, 'SafeMath: addition overflow'
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalCap - (totalCap * arg2 / totalSupply) <= sub_7fd74ea2 + mcr:
                revert with 0, 
                            32,
                            41,
                            0x6543616e6e6f742077697468647261772064756520746f204d4352206c6576656c2072657175697265,
                            mem[333 len 19],
                            mem[ceil32(arg3.length) + 640 len 4]
    if not totalSupply:
        require ext_code.size(sub_ae61fd8dAddress)
        staticcall sub_ae61fd8dAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > ext_call.return_data[0]:
            revert with 0, 
                        32,
                        56,
                        0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                        mem[348 len 4],
                        mem[ceil32(arg3.length) + 640 len 4]
        if arg2 > totalCap:
            revert with 0, 'SafeMath: subtraction overflow'
        totalCap -= arg2
        if not msg.sender:
            revert with 0, 
                        32,
                        33,
                        0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[325 len 27],
                        mem[ceil32(arg3.length) + 640 len 4]
        if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
            revert with 0, 'Withdrawal is locked up'
        require ext_code.size(stor235)
        staticcall stor235.0x5ea308d8 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        40,
                        0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                        mem[332 len 20],
                        mem[ceil32(arg3.length) + 640 len 4]
        mem[ceil32(arg3.length) + 512] = 34
        mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg2
        emit Transfer(arg2, msg.sender, 0);
        mem[ceil32(arg3.length) + 644] = msg.sender
        mem[ceil32(arg3.length) + 676] = arg2
        mem[ceil32(arg3.length) + 608] = 68
        mem[ceil32(arg3.length) + 644 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg3.length) + 640 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(arg3.length) + 708] = 32
        mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(arg3.length) + 878 len 26]
        if not ext_code.size(sub_ae61fd8dAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        mem[ceil32(arg3.length) + 864 len 4] = 0
        mem[ceil32(arg3.length) + 836 len 0] = 0
        call sub_ae61fd8dAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[ceil32(arg3.length) + 836 len 4]
        if not return_data.size:
            if not ext_call.success:
                if call.data[68]:
                    revert with memory
                      from 128
                       len call.data[68]
                revert with 0, 'SafeERC20: low-level call failed'
            if call.data[68]:
                require call.data[68] >= 32
                if not call.data[100]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg3.length) + 882 len 22]
        else:
            mem[ceil32(arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(arg3.length) + 804]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg3.length) + ceil32(return_data.size) + 883 len 22]
        emit Withdraw(arg2, msg.sender);
    else:
        if not arg2:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / totalSupply > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if 0 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= 0 / totalSupply
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = 0 / totalSupply
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 644 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg3.length) + 640 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
            mem[ceil32(arg3.length) + 864 len 4] = 0
            mem[ceil32(arg3.length) + 836 len 0] = 0
            call sub_ae61fd8dAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 0 / totalSupply) << 224, mem[ceil32(arg3.length) + 836 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if call.data[68]:
                        revert with memory
                          from 128
                           len call.data[68]
                    revert with 0, 'SafeERC20: low-level call failed'
                if call.data[68]:
                    require call.data[68] >= 32
                    if not call.data[100]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg3.length) + 882 len 22]
            else:
                mem[ceil32(arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(arg3.length) + 804]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 883 len 22]
            emit Withdraw((0 / totalSupply), msg.sender);
        else:
            if totalCap * arg2 / arg2 != totalCap:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_ae61fd8dAddress)
            staticcall sub_ae61fd8dAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalCap * arg2 / totalSupply > ext_call.return_data[0]:
                revert with 0, 
                            32,
                            56,
                            0x654e6f7420656e6f75676820426173696320546f6b656e20746f6b656e73206f6e207468652062616c616e636520746f2077697468647261,
                            mem[348 len 4],
                            mem[ceil32(arg3.length) + 640 len 4]
            if totalCap * arg2 / totalSupply > totalCap:
                revert with 0, 'SafeMath: subtraction overflow'
            totalCap -= totalCap * arg2 / totalSupply
            if not msg.sender:
                revert with 0, 
                            32,
                            33,
                            0x2945524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[325 len 27],
                            mem[ceil32(arg3.length) + 640 len 4]
            if lockupPeriod + stor237[address(msg.sender)] < stor237[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            if lockupPeriod + stor237[address(msg.sender)] > block.timestamp:
                revert with 0, 'Withdrawal is locked up'
            require ext_code.size(stor235)
            staticcall stor235.0x5ea308d8 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            40,
                            0x6c506f6f6c2069732063757272656e746c79206c6f636b65642062792061637469766520636c6169,
                            mem[332 len 20],
                            mem[ceil32(arg3.length) + 640 len 4]
            mem[ceil32(arg3.length) + 512] = 34
            mem[ceil32(arg3.length) + 544 len 34] = 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[290 len 30], mem[350 len 2]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg2
            emit Transfer(arg2, msg.sender, 0);
            mem[ceil32(arg3.length) + 644] = msg.sender
            mem[ceil32(arg3.length) + 676] = totalCap * arg2 / totalSupply
            mem[ceil32(arg3.length) + 608] = 68
            mem[ceil32(arg3.length) + 644 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg3.length) + 640 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(arg3.length) + 708] = 32
            mem[ceil32(arg3.length) + 740] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x77416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg3.length) + 878 len 26]
            if not ext_code.size(sub_ae61fd8dAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg3.length) + 772 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, totalCap * arg2 / totalSupply) >> 32
            mem[ceil32(arg3.length) + 864 len 4] = 0
            mem[ceil32(arg3.length) + 836 len 0] = 0
            call sub_ae61fd8dAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, totalCap * arg2 / totalSupply) << 224, mem[ceil32(arg3.length) + 836 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if call.data[68]:
                        revert with memory
                          from 128
                           len call.data[68]
                    revert with 0, 'SafeERC20: low-level call failed'
                if call.data[68]:
                    require call.data[68] >= 32
                    if not call.data[100]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg3.length) + 882 len 22]
            else:
                mem[ceil32(arg3.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(arg3.length) + 804]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg3.length) + ceil32(return_data.size) + 883 len 22]
            emit Withdraw((totalCap * arg2 / totalSupply), msg.sender);
}



}
