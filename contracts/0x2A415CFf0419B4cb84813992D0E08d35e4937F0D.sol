contract main {




// =====================  Runtime code  =====================


const sub_98017e2c(?) = 10^18

const sub_a2749c4c(?) = 0

const sub_d32867d0(?) = 10^18

const PRICE_PRECISION = 10^18

const DEFAULT_ADMIN_ROLE = 0

const MAX_FEE = 5 * 10^16


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
address feeCollectorAddress;
array of address sub_16b64135;
mapping of uint8 stor103;
array of address sub_c9cf50e7;
mapping of uint8 stor105;
mapping of address oracleOf;
array of address sub_0c88a6aa;
mapping of uint8 stor108;
array of address sub_fb54fbb3;
mapping of uint8 stor110;
mapping of uint8 stor111;
uint256 globalCollateralRatio;
address sub_d53c33beAddress;
array of address sub_228a71d5;
uint256 sub_ea5f7abe;
uint256 lastCallTime;
uint256 bonusRate;
uint256 sub_29a29083;
uint256 buybackFee;
uint256 recollatFee;
bool stor121; offset 256
uint8 recollateralizePaused;
uint8 buyBackPaused; offset 8
uint256 stor121; offset 8
uint256 stor121;
array of uint32 vaults;
uint256 sub_fa2caf31;
address shareAddress;
address sub_b831a63dAddress;
array of address sub_7d35cc0b;
mapping of uint8 stor176;
array of address stor31803416089537561239136862248731574845551118351359000136225178771603843531604;
array of address stor36196900403555979482524091198388905307672197531129696523685036502647148779736;
array of address stor73312145035153491510562152807817059592623112619519005820720798265374763743059;
array of address stor85606912040150585808358299647458656657391986846227832211658412328070808574132;
array of address stor100854416345316802056184364750193678299985834698244506585272914753650503820705;
array of address stor108675280636212994165699066894553117855276624395885094332865914867125083942403;

function recollatFee() payable {
    return recollatFee
}

function sub_0c88a6aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0c88a6aa.length
    return sub_0c88a6aa[arg1]
}

function sub_16b64135(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_16b64135.length
    return sub_16b64135[arg1]
}

function sub_228a71d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_228a71d5.length
    return sub_228a71d5[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_29a29083(?) payable {
    return sub_29a29083
}

function buybackFee() payable {
    return buybackFee
}

function sub_503dd1f6(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor108[arg1])
}

function bonusRate() payable {
    return bonusRate
}

function sub_60f93ce8(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor103[arg1])
}

function sub_69c8905d(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor105[arg1])
}

function recollateralizePaused() payable {
    return bool(recollateralizePaused)
}

function sub_7d35cc0b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7d35cc0b.length
    return sub_7d35cc0b[arg1]
}

function buyBackPaused() payable {
    return bool(buyBackPaused)
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < vaults.length
    return address(vaults[arg1])
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

function sub_946e1b3e(?) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor111[arg1]))
}

function share() payable {
    return shareAddress
}

function sub_b831a63d(?) payable {
    return sub_b831a63dAddress
}

function lastCallTime() payable {
    return lastCallTime
}

function sub_bd7a626f(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor110[arg1])
}

function feeCollector() payable {
    return feeCollectorAddress
}

function sub_c9cf50e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c9cf50e7.length
    return sub_c9cf50e7[arg1]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_d53c33be(?) payable {
    return sub_d53c33beAddress
}

function sub_ea5f7abe(?) payable {
    return sub_ea5f7abe
}

function globalCollateralRatio() payable {
    return globalCollateralRatio
}

function oracleOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return oracleOf[arg1]
}

function sub_fa2caf31(?) payable {
    return sub_fa2caf31
}

function sub_fb54fbb3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fb54fbb3.length
    return sub_fb54fbb3[arg1]
}

function sub_ff57d82a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor176[arg1])
}

function _fallback() payable {
    revert
}

function setBonusRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    bonusRate = arg1
}

function setShareTWAP(address arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    sub_b831a63dAddress = arg1
}

function setFeeCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    feeCollectorAddress = arg1
}

function setRefreshCooldown(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    sub_ea5f7abe = arg1
}

function toggleBuyBack() payable {
    require roleAdmin[0x539440820030c4994db4e31b6b800deafd503688728f932addfe7a410515c14c][1][address(msg.sender)].field_0
    Mask(248, 0, stor121.field_8) = Mask(248, 0, not buyBackPaused)
    emit BuybackToggled(bool(0 or uint8(not buyBackPaused)));
}

function setBuybackFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    if arg1 > 5 * 10^16:
        revert with 0, 'The new fee is to high'
    buybackFee = arg1
    emit SetBuybackFee(arg1);
}

function setRecollatFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    if arg1 > 5 * 10^16:
        revert with 0, 'The new fee is to high'
    recollatFee = arg1
    emit SetRecollatFee(arg1);
}

function setInvestCollateralRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    sub_fa2caf31 = arg1
    emit SetInvestCollateralRatio(arg1);
}

function toggleRecollateralize() payable {
    require roleAdmin[0x539440820030c4994db4e31b6b800deafd503688728f932addfe7a410515c14c][1][address(msg.sender)].field_0
    uint256(stor121.field_0) = not recollateralizePaused or Mask(248, 8, uint256(stor121.field_0))
    emit RecollateralizeToggled(bool(uint8(not recollateralizePaused)));
}

function setOracleOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg2:
        revert with 0, 'Zero address detected'
    oracleOf[address(arg1)] = arg2
}

function toggleEnablePool(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    uint256(stor111[address(arg1)]) = not uint8(stor111[address(arg1)]) or Mask(248, 8, uint256(stor111[address(arg1)]))
}

function getCollateralTokenValue(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getSharePrice() payable {
    require ext_code.size(sub_b831a63dAddress)
    staticcall sub_b831a63dAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args shareAddress, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'invalidAddress'
    vaults.length++
    storF044[stor122.length] = arg1
    emit VaultAdded(arg1);
}

function setGlobalCollateralRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if arg1 > 10^18:
        revert with 0, 'New ratio exceed bound'
    globalCollateralRatio = arg1
    lastCallTime = block.timestamp
    emit SetGlobalCollateralRatio(arg1);
}

function addBalancerWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if stor176[address(arg1)]:
        revert with 0, 'Address already exists'
    stor176[address(arg1)] = 1
    sub_7d35cc0b.length++
    storDEF9[stor175.length] = arg1
}

function addOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if stor105[address(arg1)]:
        revert with 0, 'Address already exists'
    stor105[address(arg1)] = 1
    sub_c9cf50e7.length++
    storA215[stor104.length] = arg1
    emit AddOracle(arg1);
}

function addSynth(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if stor110[address(arg1)]:
        revert with 0, 'Address already exists'
    stor110[address(arg1)] = 1
    sub_fb54fbb3.length++
    stor5006[stor109.length] = arg1
    emit AddSynthToken(arg1);
}

function requestTransfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(msg.sender)].field_0:
        revert with 0, 'Sender is not a pool'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function recallFromVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    require arg1 < vaults.length
    if not address(vaults[arg1]):
        revert with 0, 'Vault does not exist'
    require arg1 < vaults.length
    require ext_code.size(address(vaults[arg1]))
    call address(vaults[arg1]).withdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setRatioDelta(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][1][address(msg.sender)].field_0
    if block.timestamp - lastCallTime < sub_ea5f7abe:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x5f4d757374207761697420666f7220746865207265667265736820636f6f6c646f776e2073696e6365206c61737420726566726573,
                    mem[217 len 11]
    sub_29a29083 = arg1
}

function removeVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'invalidAddress'
    idx = 0
    while idx < vaults.length:
        mem[0] = 122
        if address(vaults[idx]) != arg1:
            idx = idx + 1
            continue 
        require idx < vaults.length
        address(vaults[idx]) = 0
        emit VaultRemoved(arg1);
    emit VaultRemoved(arg1);
}

function addCollateralAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if stor103[address(arg1)]:
        revert with 0, 'Address already exists'
    if not stor105[address(arg2)]:
        revert with 0, 'Oracle is not exists'
    stor103[address(arg1)] = 1
    sub_16b64135.length++
    stor4650[stor102.length] = arg1
    oracleOf[address(arg1)] = arg2
    emit AddCollateralToken(arg1);
}

function removeBalancerWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if bool(stor176[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor176[address(arg1)] = 0
    idx = 0
    while idx < sub_7d35cc0b.length:
        mem[0] = 175
        if sub_7d35cc0b[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < sub_7d35cc0b.length
        sub_7d35cc0b[idx] = 0
}

function removeOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if bool(stor105[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor105[address(arg1)] = 0
    idx = 0
    while idx < sub_c9cf50e7.length:
        mem[0] = 104
        if sub_c9cf50e7[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < sub_c9cf50e7.length
        sub_c9cf50e7[idx] = 0
        emit OracleRemoved(arg1);
    emit OracleRemoved(arg1);
}

function removeSynth(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if bool(stor110[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor110[address(arg1)] = 0
    idx = 0
    while idx < sub_fb54fbb3.length:
        mem[0] = 109
        if sub_fb54fbb3[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < sub_fb54fbb3.length
        sub_fb54fbb3[idx] = 0
        emit SynthTokenRemoved(arg1);
    emit SynthTokenRemoved(arg1);
}

function stepDownTCR() payable {
    if not roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][1][address(msg.sender)].field_0:
        revert with 0, 'Sender is not a ratio setter'
    if block.timestamp - lastCallTime < sub_ea5f7abe:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x5f4d757374207761697420666f7220746865207265667265736820636f6f6c646f776e2073696e6365206c61737420726566726573,
                    mem[217 len 11]
    if sub_29a29083 > globalCollateralRatio:
        revert with 0, 'SafeMath: subtraction overflow'
    globalCollateralRatio -= sub_29a29083
    lastCallTime = block.timestamp
    emit SetGlobalCollateralRatio(globalCollateralRatio);
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

function stepUpTCR() payable {
    if not roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][1][address(msg.sender)].field_0:
        revert with 0, 'Sender is not a ratio setter'
    if block.timestamp - lastCallTime < sub_ea5f7abe:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x5f4d757374207761697420666f7220746865207265667265736820636f6f6c646f776e2073696e6365206c61737420726566726573,
                    mem[217 len 11]
    if sub_29a29083 + globalCollateralRatio < globalCollateralRatio:
        revert with 0, 'SafeMath: addition overflow'
    globalCollateralRatio += sub_29a29083
    if 10^18 < sub_29a29083 + globalCollateralRatio:
        globalCollateralRatio = 10^18
    lastCallTime = block.timestamp
    emit SetGlobalCollateralRatio(globalCollateralRatio);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
                    0x21416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function setPIDController(address arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    if not roleAdmin[roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][1][address(arg1)].field_0:
        roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_0++
        roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_0].field_0 = arg1
        roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_0].field_160 = 0
        roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][1][address(arg1)].field_0 = roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_0
        emit RoleGranted(0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58, arg1, msg.sender);
    sub_d53c33beAddress = arg1
}

function totalGlobalSynthValue() payable {
    mem[64] = 96
    idx = 0
    while idx < sub_fb54fbb3.length:
        mem[0] = 109
        if sub_fb54fbb3[idx]:
            require idx < sub_fb54fbb3.length
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_fb54fbb3.length
            mem[0] = 109
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].getSynthPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _35 = mem[64]
                mem[64] = mem[64] + 64
                mem[_35] = 26
                mem[_35 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _36 = mem[64]
                mem[64] = mem[64] + 64
                mem[_36] = 26
                mem[_36 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if stor108[address(arg1)]:
        revert with 0, 'Address already exists'
    stor108[address(arg1)] = 1
    sub_0c88a6aa.length++
    storBD43[stor107.length] = arg1
    if not roleAdmin[roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0:
        roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0++
        roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0].field_0 = arg1
        roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0].field_160 = 0
        roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0 = roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0
        emit RoleGranted(0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d, arg1, msg.sender);
    emit PoolAdded(arg1);
}

function removeCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if bool(stor103[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor103[address(arg1)] = 0
    idx = 0
    while idx < sub_16b64135.length:
        mem[0] = 102
        if sub_16b64135[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < sub_16b64135.length
        sub_16b64135[idx] = 0
        if oracleOf[address(arg1)]:
            if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
                revert with 0, 'tSender is not a maintainer'
            if not oracleOf[address(arg1)]:
                revert with 0, 'Zero address detected'
            if bool(stor105[stor106[address(arg1)]]) != 1:
                revert with 0, 'Address nonexistant'
            stor105[stor106[address(arg1)]] = 0
            idx = 0
            while idx < sub_c9cf50e7.length:
                mem[0] = 104
                if sub_c9cf50e7[idx] != oracleOf[address(arg1)]:
                    idx = idx + 1
                    continue 
                require idx < sub_c9cf50e7.length
                sub_c9cf50e7[idx] = 0
                emit OracleRemoved(oracleOf[address(arg1)]);
                emit CollateralTokenRemoved(arg1);
            emit OracleRemoved(oracleOf[address(arg1)]);
        emit CollateralTokenRemoved(arg1);
    if oracleOf[address(arg1)]:
        if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
            revert with 0, 'tSender is not a maintainer'
        if not oracleOf[address(arg1)]:
            revert with 0, 'Zero address detected'
        if bool(stor105[stor106[address(arg1)]]) != 1:
            revert with 0, 'Address nonexistant'
        stor105[stor106[address(arg1)]] = 0
        idx = 0
        while idx < sub_c9cf50e7.length:
            mem[0] = 104
            if sub_c9cf50e7[idx] != oracleOf[address(arg1)]:
                idx = idx + 1
                continue 
            require idx < sub_c9cf50e7.length
            sub_c9cf50e7[idx] = 0
            emit OracleRemoved(oracleOf[address(arg1)]);
            emit CollateralTokenRemoved(arg1);
        emit OracleRemoved(oracleOf[address(arg1)]);
    emit CollateralTokenRemoved(arg1);
}

function globalCollateralValue() payable {
    mem[64] = 96
    idx = 0
    while idx < sub_16b64135.length:
        mem[0] = 102
        if sub_16b64135[idx]:
            require idx < sub_16b64135.length
            require ext_code.size(sub_16b64135[idx])
            staticcall sub_16b64135[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_16b64135.length
            mem[32] = 106
            mem[0] = 102
            mem[mem[64] + 4] = sub_16b64135[idx]
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[stor102[idx]])
            staticcall oracleOf[stor102[idx]].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_16b64135[idx], 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _75 = mem[64]
                mem[64] = mem[64] + 64
                mem[_75] = 26
                mem[_75 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _78 = mem[64]
                mem[64] = mem[64] + 64
                mem[_78] = 26
                mem[_78 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < vaults.length:
        mem[0] = 122
        if address(vaults[idx]):
            require idx < vaults.length
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).vaultBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).asset() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 106
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[address(ext_call.return_data[0])])
            staticcall oracleOf[address(ext_call.return_data[0])].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _104 = mem[64]
                mem[64] = mem[64] + 64
                mem[_104] = 26
                mem[_104 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = 26
                mem[_105 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function removePool(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tSender is not a maintainer'
    if not arg1:
        revert with 0, 'Zero address detected'
    if bool(stor108[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor108[address(arg1)] = 0
    idx = 0
    while idx < sub_0c88a6aa.length:
        mem[0] = 107
        if sub_0c88a6aa[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < sub_0c88a6aa.length
        sub_0c88a6aa[idx] = 0
        if not roleAdmin[roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_512][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x21416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                        mem[212 len 16]
        if roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0:
            require roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0 - 1 < roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0
            require roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0 - 1 < roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0
            roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0].field_0 = roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0].field_0
            roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0].field_0].field_0 = roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0
            require roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0
            roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0].field_0 = 0
            roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0--
            roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0 = 0
            emit RoleRevoked(0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d, arg1, msg.sender);
        emit PoolRemoved(arg1);
    if not roleAdmin[roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x21416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0:
        require roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0 - 1 < roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0
        require roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0 - 1 < roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0
        roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0].field_0 = roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0].field_0
        roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0].field_0].field_0 = roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0
        require roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0
        roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0].field_0 = 0
        roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d].field_0--
        roleAdmin[0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x5d5c2d2522b7f6ec8d1c86f44956b9ecd4376b1842cd263d54a5368aa149486d, arg1, msg.sender);
    emit PoolRemoved(arg1);
}

function enterVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    require arg1 < vaults.length
    if not address(vaults[arg1]):
        revert with 0, 'No vault'
    require arg1 < vaults.length
    require ext_code.size(address(vaults[arg1]))
    staticcall address(vaults[arg1]).asset() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Collateral Balance is zero'
    if sub_fa2caf31:
        if ext_call.return_data[0] * sub_fa2caf31 / sub_fa2caf31 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * sub_fa2caf31 / 10^18:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, vaults[arg1]), uint32(vaults[arg1]), 0
            call address(ext_call.return_data[0]) with:
               funct uint32(vaults[arg1])
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, vaults[arg1]), uint32(vaults[arg1]), 0) << 256, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if ext_call.return_data[0] * sub_fa2caf31 / 10^18:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaults[arg1])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x6e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 361 len 64] = 0, address(vaults[arg1]), Mask(224, 32, ext_call.return_data[0] * sub_fa2caf31 / 10^18) >> 32
            call address(ext_call.return_data[0]) with:
               funct uint32(vaults[arg1])
                 gas gas_remaining wei
                args ext_call.return_data[0] * sub_fa2caf31 / 10^18, Mask(224, 32, address(vaults[arg1]), Mask(224, 32, ext_call.return_data[0] * sub_fa2caf31 / 10^18) >> 32) >> 32, mem[ceil32(return_data.size) + 425 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 393]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 472 len 22]
            require ext_code.size(address(vaults[arg1]))
            call address(vaults[arg1]).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * sub_fa2caf31 / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function getECR() payable {
    mem[64] = 96
    idx = 0
    while idx < sub_16b64135.length:
        mem[0] = 102
        if sub_16b64135[idx]:
            require idx < sub_16b64135.length
            require ext_code.size(sub_16b64135[idx])
            staticcall sub_16b64135[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_16b64135.length
            mem[32] = 106
            mem[0] = 102
            mem[mem[64] + 4] = sub_16b64135[idx]
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[stor102[idx]])
            staticcall oracleOf[stor102[idx]].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_16b64135[idx], 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_112] = 26
                mem[_112 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_118] = 26
                mem[_118 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < vaults.length:
        mem[0] = 122
        if address(vaults[idx]):
            require idx < vaults.length
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).vaultBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).asset() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 106
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[address(ext_call.return_data[0])])
            staticcall oracleOf[address(ext_call.return_data[0])].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_167] = 26
                mem[_167 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 26
                mem[_171 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_fb54fbb3.length:
        mem[0] = 109
        if sub_fb54fbb3[idx]:
            require idx < sub_fb54fbb3.length
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_fb54fbb3.length
            mem[0] = 109
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].getSynthPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_199] = 26
                mem[_199 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    revert with 0, 'SafeMath: division by zero'
}

function getMaxBuybackShare(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_16b64135.length:
        mem[0] = 102
        if sub_16b64135[idx]:
            require idx < sub_16b64135.length
            require ext_code.size(sub_16b64135[idx])
            staticcall sub_16b64135[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_16b64135.length
            mem[32] = 106
            mem[0] = 102
            mem[mem[64] + 4] = sub_16b64135[idx]
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[stor102[idx]])
            staticcall oracleOf[stor102[idx]].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_16b64135[idx], 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_112] = 26
                mem[_112 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_118] = 26
                mem[_118 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < vaults.length:
        mem[0] = 122
        if address(vaults[idx]):
            require idx < vaults.length
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).vaultBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).asset() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 106
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[address(ext_call.return_data[0])])
            staticcall oracleOf[address(ext_call.return_data[0])].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_167] = 26
                mem[_167 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 26
                mem[_171 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_fb54fbb3.length:
        mem[0] = 109
        if sub_fb54fbb3[idx]:
            require idx < sub_fb54fbb3.length
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_fb54fbb3.length
            mem[0] = 109
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].getSynthPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_199] = 26
                mem[_199 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    revert with 0, 'SafeMath: division by zero'
}

function recollateralizeAmount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_16b64135.length:
        mem[0] = 102
        if sub_16b64135[idx]:
            require idx < sub_16b64135.length
            require ext_code.size(sub_16b64135[idx])
            staticcall sub_16b64135[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_16b64135.length
            mem[32] = 106
            mem[0] = 102
            mem[mem[64] + 4] = sub_16b64135[idx]
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[stor102[idx]])
            staticcall oracleOf[stor102[idx]].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_16b64135[idx], 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_112] = 26
                mem[_112 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_118] = 26
                mem[_118 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < vaults.length:
        mem[0] = 122
        if address(vaults[idx]):
            require idx < vaults.length
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).vaultBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).asset() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 106
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[address(ext_call.return_data[0])])
            staticcall oracleOf[address(ext_call.return_data[0])].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_167] = 26
                mem[_167 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 26
                mem[_171 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_fb54fbb3.length:
        mem[0] = 109
        if sub_fb54fbb3[idx]:
            require idx < sub_fb54fbb3.length
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_fb54fbb3.length
            mem[0] = 109
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].getSynthPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_199] = 26
                mem[_199 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    revert with 0, 'SafeMath: division by zero'
}

function excessCollateralBalance(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_16b64135.length:
        mem[0] = 102
        if sub_16b64135[idx]:
            require idx < sub_16b64135.length
            require ext_code.size(sub_16b64135[idx])
            staticcall sub_16b64135[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_16b64135.length
            mem[32] = 106
            mem[0] = 102
            mem[mem[64] + 4] = sub_16b64135[idx]
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[stor102[idx]])
            staticcall oracleOf[stor102[idx]].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_16b64135[idx], 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_112] = 26
                mem[_112 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _118 = mem[64]
                mem[64] = mem[64] + 64
                mem[_118] = 26
                mem[_118 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < vaults.length:
        mem[0] = 122
        if address(vaults[idx]):
            require idx < vaults.length
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).vaultBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).asset() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 106
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[address(ext_call.return_data[0])])
            staticcall oracleOf[address(ext_call.return_data[0])].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_167] = 26
                mem[_167 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 26
                mem[_171 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_fb54fbb3.length:
        mem[0] = 109
        if sub_fb54fbb3[idx]:
            require idx < sub_fb54fbb3.length
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_fb54fbb3.length
            mem[0] = 109
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].getSynthPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_199] = 26
                mem[_199 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    revert with 0, 'SafeMath: division by zero'
}

function rebalanceVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    require arg1 < vaults.length
    if not address(vaults[arg1]):
        revert with 0, 'Vault does not exist'
    require arg1 < vaults.length
    require ext_code.size(address(vaults[arg1]))
    call address(vaults[arg1]).withdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < vaults.length
    if not address(vaults[arg1]):
        revert with 0, 'No vault'
    require arg1 < vaults.length
    require ext_code.size(address(vaults[arg1]))
    staticcall address(vaults[arg1]).asset() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Collateral Balance is zero'
    if sub_fa2caf31:
        if ext_call.return_data[0] * sub_fa2caf31 / sub_fa2caf31 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] * sub_fa2caf31 / 10^18:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, vaults[arg1]), uint32(vaults[arg1]), 0
            call address(ext_call.return_data[0]) with:
               funct uint32(vaults[arg1])
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, vaults[arg1]), uint32(vaults[arg1]), 0) << 256, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if ext_call.return_data[0] * sub_fa2caf31 / 10^18:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(vaults[arg1])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x6e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 361 len 64] = 0, address(vaults[arg1]), Mask(224, 32, ext_call.return_data[0] * sub_fa2caf31 / 10^18) >> 32
            call address(ext_call.return_data[0]) with:
               funct uint32(vaults[arg1])
                 gas gas_remaining wei
                args ext_call.return_data[0] * sub_fa2caf31 / 10^18, Mask(224, 32, address(vaults[arg1]), Mask(224, 32, ext_call.return_data[0] * sub_fa2caf31 / 10^18) >> 32) >> 32, mem[ceil32(return_data.size) + 425 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 393]:
                    revert with 0, 
                                32,
                                42,
                                0x685361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 472 len 22]
            require ext_code.size(address(vaults[arg1]))
            call address(vaults[arg1]).deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * sub_fa2caf31 / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function recollateralizeShare(address arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if recollateralizePaused:
        revert with 0, 'Recollateralize is paused'
    if not stor176[msg.sender]:
        revert with 0, 'Not whitelisted'
    require ext_code.size(oracleOf[address(arg1)])
    staticcall oracleOf[address(arg1)].consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < sub_16b64135.length:
        mem[0] = 102
        if sub_16b64135[idx]:
            require idx < sub_16b64135.length
            require ext_code.size(sub_16b64135[idx])
            staticcall sub_16b64135[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_16b64135.length
            mem[32] = 106
            mem[0] = 102
            mem[mem[64] + 4] = sub_16b64135[idx]
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[stor102[idx]])
            staticcall oracleOf[stor102[idx]].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_16b64135[idx], 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = 26
                mem[_122 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_128] = 26
                mem[_128 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < vaults.length:
        mem[0] = 122
        if address(vaults[idx]):
            require idx < vaults.length
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).vaultBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).asset() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 106
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[address(ext_call.return_data[0])])
            staticcall oracleOf[address(ext_call.return_data[0])].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _177 = mem[64]
                mem[64] = mem[64] + 64
                mem[_177] = 26
                mem[_177 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_181] = 26
                mem[_181 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_fb54fbb3.length:
        mem[0] = 109
        if sub_fb54fbb3[idx]:
            require idx < sub_fb54fbb3.length
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_fb54fbb3.length
            mem[0] = 109
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].getSynthPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_208] = 26
                mem[_208 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _209 = mem[64]
                mem[64] = mem[64] + 64
                mem[_209] = 26
                mem[_209 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    revert with 0, 'SafeMath: division by zero'
}

function buyBackShare(uint256 arg1, uint256 arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if buyBackPaused:
        revert with 0, 'Buyback is paused'
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'No enough Share'
    if not stor176[msg.sender]:
        revert with 0, 'Not whitelisted'
    idx = 0
    while idx < sub_16b64135.length:
        mem[0] = 102
        if sub_16b64135[idx]:
            require idx < sub_16b64135.length
            require ext_code.size(sub_16b64135[idx])
            staticcall sub_16b64135[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_16b64135.length
            mem[32] = 106
            mem[0] = 102
            mem[mem[64] + 4] = sub_16b64135[idx]
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[stor102[idx]])
            staticcall oracleOf[stor102[idx]].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args sub_16b64135[idx], 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_123] = 26
                mem[_123 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_129] = 26
                mem[_129 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < vaults.length:
        mem[0] = 122
        if address(vaults[idx]):
            require idx < vaults.length
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).vaultBalance() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaults[idx]))
            staticcall address(vaults[idx]).asset() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = address(ext_call.return_data[0])
            mem[32] = 106
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = 10^18
            require ext_code.size(oracleOf[address(ext_call.return_data[0])])
            staticcall oracleOf[address(ext_call.return_data[0])].consult(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_178] = 26
                mem[_178 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 26
                mem[_182 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_fb54fbb3.length:
        mem[0] = 109
        if sub_fb54fbb3[idx]:
            require idx < sub_fb54fbb3.length
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < sub_fb54fbb3.length
            mem[0] = 109
            require ext_code.size(sub_fb54fbb3[idx])
            staticcall sub_fb54fbb3[idx].getSynthPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _209 = mem[64]
                mem[64] = mem[64] + 64
                mem[_209] = 26
                mem[_209 + 32] = 'SafeMath: division by zero'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_210] = 26
                mem[_210 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    revert with 0, 'SafeMath: division by zero'
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if uint8(stor0.field_8):
        sub_29a29083 = 25 * 10^14
        bonusRate = 75 * 10^14
        sub_ea5f7abe = 0
        globalCollateralRatio = 10^18
        sub_d53c33beAddress = arg2
        feeCollectorAddress = arg5
        shareAddress = arg3
        sub_b831a63dAddress = arg4
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            sub_29a29083 = 25 * 10^14
            bonusRate = 75 * 10^14
            sub_ea5f7abe = 0
            globalCollateralRatio = 10^18
            sub_d53c33beAddress = arg2
            feeCollectorAddress = arg5
            shareAddress = arg3
            sub_b831a63dAddress = arg4
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            sub_29a29083 = 25 * 10^14
            bonusRate = 75 * 10^14
            sub_ea5f7abe = 0
            globalCollateralRatio = 10^18
            sub_d53c33beAddress = arg2
            feeCollectorAddress = arg5
            shareAddress = arg3
            sub_b831a63dAddress = arg4
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    if not roleAdmin[roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(arg1)].field_0:
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0++
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0].field_0 = arg1
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0].field_160 = 0
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(arg1)].field_0 = roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0
        emit RoleGranted(0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18, arg1, msg.sender);
    require roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0
    if not roleAdmin[roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][1][address(arg2)].field_0:
        roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_0++
        roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_0].field_0 = arg2
        roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_0].field_160 = 0
        roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58][1][address(arg2)].field_0 = roleAdmin[0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58].field_0
        emit RoleGranted(0x74149427e3d6a7724e94394e9368a9531f3278faec21b78b535463c08a124f58, arg2, msg.sender);
    sub_d53c33beAddress = arg2
    recollateralizePaused = 1
    buyBackPaused = 1
    stor121.field_256 % 1 = 0
    sub_fa2caf31 = 7 * 10^17
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
