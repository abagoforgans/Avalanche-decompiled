contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct graveyardLevelOf;
array of struct stor2;
address stor3;
address stor4;
uint8 stor5; offset 160
uint8 graveyardLevelCap; offset 168
uint128 stor5; offset 160
address stor5;
uint256 sideChangeCostEther;
uint256 sideChangeCostSpirit;
uint256 baseStakingAmount;
uint8 purpleTeamStakingMultipler;
uint8 greenTeamStakingMultipler; offset 8

function graveyardLevelOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return graveyardLevelOf[address(arg1)].field_8
}

function harvestTimestampOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return graveyardLevelOf[address(arg1)].field_512
}

function sideChangeCostSpirit() {
    return sideChangeCostSpirit
}

function owner() {
    return owner
}

function purpleTeamStakingMultipler() {
    return purpleTeamStakingMultipler
}

function changeSideEnabled() {
    return bool(uint8(stor5.field_160))
}

function teamOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if graveyardLevelOf[address(arg1)].field_0 >= 3:
        revert with 'NH{q', 33
    return graveyardLevelOf[address(arg1)].field_0
}

function sideChangeCostEther() {
    return sideChangeCostEther
}

function baseStakingAmount() {
    return baseStakingAmount
}

function greenTeamStakingMultipler() {
    return greenTeamStakingMultipler
}

function graveyardLevelCap() {
    return graveyardLevelCap
}

function _fallback() payable {
    revert
}

function enableChangeSide() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor5.field_160) = 1
}

function disableChangeSide() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor5.field_160) = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setGraveyard(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '0x0 Forbidden'
    stor4 = arg1
}

function setAvaxGhost(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '0x0 Forbidden'
    stor3 = arg1
}

function setSpirit(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '0x0 Forbidden'
    address(stor5.field_0) = arg1
}

function setBaseStakingAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The base staking amount cannot be negative'
    baseStakingAmount = arg1
}

function setChangeSideCostSpirit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The cost of changing side cannot be negative'
    sideChangeCostSpirit = arg1
}

function setLevelCap(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= graveyardLevelCap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New level cap cannot be lower than the current'
    graveyardLevelCap = arg1
}

function setGreenTeamStakingMultiplier(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The base staking amount cannot be negative'
    greenTeamStakingMultipler = arg1
}

function setPurpleTeamStakingMultiplier(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The base staking amount cannot be negative'
    purpleTeamStakingMultipler = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Nothing to withdraw'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSideChangeCostEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The cost of changing side quickly cannot be negative'
    sideChangeCostEther = arg1
}

function graveyardLevelUpCost(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not graveyardLevelOf[address(arg1)].field_8:
        return 10^18
    if bool(bool(graveyardLevelOf[address(arg1)].field_8 < 78)) or bool(bool(graveyardLevelOf[address(arg1)].field_8 < 32)):
        if 4^graveyardLevelOf[address(arg1)].field_8 > -1:
            revert with 'NH{q', 17
        if 4^graveyardLevelOf[address(arg1)].field_8 and 10^18 > -1 / 4^graveyardLevelOf[address(arg1)].field_8:
            revert with 'NH{q', 17
        return (10^18 * 4^graveyardLevelOf[address(arg1)].field_8)
    s = 4
    t = 1
    idx = graveyardLevelOf[address(arg1)].field_8
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if t * s and 10^18 > -1 / t * s:
        revert with 'NH{q', 17
    return (10^18 * t * s)
}

function sub_43610884(?) {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _14 = mem[64]
        mem[64] = mem[64] + 160
        if stor2[idx].field_0 > 2:
            revert with 'NH{q', 33
        mem[_14] = stor2[idx].field_0
        mem[_14 + 32] = stor2[idx].field_8
        mem[_14 + 64] = stor2[idx].field_256
        mem[_14 + 96] = stor2[idx].field_512
        mem[_14 + 128] = stor2[idx].field_768
        mem[s] = _14
        s = s + 32
        idx = idx + 1
        continue 
    _15 = mem[64]
    mem[mem[64]] = 32
    _16 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _16:
        _24 = mem[s]
        if mem[mem[s]] >= 3:
            revert with 'NH{q', 33
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_24 + 63 len 1]
        mem[t + 64] = mem[_24 + 64]
        mem[t + 96] = mem[_24 + 96]
        mem[t + 128] = mem[_24 + 140 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _15 + (160 * _16) + -mem[64] + 64
}

function constructGraveyard(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if arg1 > 2:
        revert with 'NH{q', 33
    if arg1 != 1:
        if arg1 > 2:
            revert with 'NH{q', 33
        if arg1 != 2:
            revert with 0, 'Invalid team'
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Need to mint AVAXGHOST first!'
    if graveyardLevelOf[address(msg.sender)].field_8 > 0:
        revert with 0, 'Graveyard already constructed'
    require ext_code.size(stor4)
    call stor4.0xc87661bf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > 2:
        revert with 'NH{q', 33
    graveyardLevelOf[address(msg.sender)].field_0 = arg1 or Mask(248, 8, graveyardLevelOf[address(msg.sender)].field_0)
    graveyardLevelOf[address(msg.sender)].field_8 = 1
    graveyardLevelOf[address(msg.sender)].field_512 = block.timestamp
    graveyardLevelOf[address(msg.sender)].field_768 = msg.sender
    stor2.length++
    if graveyardLevelOf[address(msg.sender)].field_0 > 2:
        revert with 'NH{q', 33
    stor2[stor2.length].field_0 = graveyardLevelOf[address(msg.sender)].field_0
    stor2[stor2.length].field_8 = graveyardLevelOf[address(msg.sender)].field_8
    stor2[stor2.length].field_256 = graveyardLevelOf[address(msg.sender)].field_256
    stor2[stor2.length].field_512 = graveyardLevelOf[address(msg.sender)].field_512
    stor2[stor2.length].field_768 = graveyardLevelOf[address(msg.sender)].field_768
    if arg1 >= 3:
        revert with 'NH{q', 33
    emit 0xf37e737e: arg1, msg.sender
}

function changeTeam(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if not uint8(stor5.field_160):
        revert with 0, 'Changing is not enabled yet!'
    if arg1 > 2:
        revert with 'NH{q', 33
    if graveyardLevelOf[address(msg.sender)].field_0 > 2:
        revert with 'NH{q', 33
    if graveyardLevelOf[address(msg.sender)].field_0 == arg1:
        revert with 0, 'Already in team'
    if msg.value > 0:
        if msg.value < sideChangeCostEther:
            revert with 0, 'Insufficient fee'
    else:
        staticcall address(stor5.field_0).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sideChangeCostSpirit > ext_call.return_data[0]:
            revert with 0, 'Not enough spirit'
        require ext_code.size(address(stor5.field_0))
        call address(stor5.field_0).0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, sideChangeCostSpirit
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < sideChangeCostSpirit:
            revert with 'NH{q', 17
        graveyardLevelOf[address(msg.sender)].field_256 = ext_call.return_data[0] - sideChangeCostSpirit
    if arg1 > 2:
        revert with 'NH{q', 33
    graveyardLevelOf[address(msg.sender)].field_0 = arg1 or Mask(248, 8, graveyardLevelOf[address(msg.sender)].field_0)
    if graveyardLevelOf[address(msg.sender)].field_0 > 2:
        revert with 'NH{q', 33
    if stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if stor2[idx].field_768 != graveyardLevelOf[address(msg.sender)].field_768:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx >= stor2.length:
                revert with 'NH{q', 50
            if graveyardLevelOf[address(msg.sender)].field_0 > 2:
                revert with 'NH{q', 33
            stor2[idx].field_0 = graveyardLevelOf[address(msg.sender)].field_0
            stor2[idx].field_8 = graveyardLevelOf[address(msg.sender)].field_8
            stor2[idx].field_256 = graveyardLevelOf[address(msg.sender)].field_256
            stor2[idx].field_512 = graveyardLevelOf[address(msg.sender)].field_512
            stor2[idx].field_768 = graveyardLevelOf[address(msg.sender)].field_768
            if arg1 >= 3:
                revert with 'NH{q', 33
            emit 0xd288de53: arg1, msg.sender
    if arg1 >= 3:
        revert with 'NH{q', 33
    emit 0xd288de53: arg1, msg.sender
}

function levelUp() {
    if graveyardLevelOf[address(msg.sender)].field_8 <= 0:
        revert with 0, 'Graveyard is not constructed'
    if graveyardLevelOf[address(msg.sender)].field_8 >= graveyardLevelCap:
        revert with 0, 'Graveyard max level reached'
    if not graveyardLevelOf[address(msg.sender)].field_8:
        staticcall address(stor5.field_0).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 10^18 > ext_call.return_data[0]:
            revert with 0, 'Not enough spirit'
        require ext_code.size(address(stor5.field_0))
        call address(stor5.field_0).0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if graveyardLevelOf[address(msg.sender)].field_8 > 254:
            revert with 'NH{q', 17
        graveyardLevelOf[address(msg.sender)].field_8 = uint8(graveyardLevelOf[address(msg.sender)].field_8 + 1)
        if ext_call.return_data[0] < 10^18:
            revert with 'NH{q', 17
        graveyardLevelOf[address(msg.sender)].field_256 = ext_call.return_data[0] - 10^18
    else:
        if bool(bool(graveyardLevelOf[address(msg.sender)].field_8 < 78)) or bool(bool(graveyardLevelOf[address(msg.sender)].field_8 < 32)):
            if 4^graveyardLevelOf[address(msg.sender)].field_8 > -1:
                revert with 'NH{q', 17
            if 4^graveyardLevelOf[address(msg.sender)].field_8 and 10^18 > -1 / 4^graveyardLevelOf[address(msg.sender)].field_8:
                revert with 'NH{q', 17
            staticcall address(stor5.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 10^18 * 4^graveyardLevelOf[address(msg.sender)].field_8 > ext_call.return_data[0]:
                revert with 0, 'Not enough spirit'
            require ext_code.size(address(stor5.field_0))
            call address(stor5.field_0).0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * 4^graveyardLevelOf[address(msg.sender)].field_8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if graveyardLevelOf[address(msg.sender)].field_8 > 254:
                revert with 'NH{q', 17
            graveyardLevelOf[address(msg.sender)].field_8 = uint8(graveyardLevelOf[address(msg.sender)].field_8 + 1)
            if ext_call.return_data[0] < 10^18 * 4^graveyardLevelOf[address(msg.sender)].field_8:
                revert with 'NH{q', 17
            graveyardLevelOf[address(msg.sender)].field_256 = ext_call.return_data[0] - (10^18 * 4^graveyardLevelOf[address(msg.sender)].field_8)
        else:
            s = 4
            t = 1
            idx = graveyardLevelOf[address(msg.sender)].field_8
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if t * s and 10^18 > -1 / t * s:
                revert with 'NH{q', 17
            staticcall address(stor5.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 10^18 * t * s > ext_call.return_data[0]:
                revert with 0, 'Not enough spirit'
            require ext_code.size(address(stor5.field_0))
            call address(stor5.field_0).0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * t * s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if graveyardLevelOf[address(msg.sender)].field_8 > 254:
                revert with 'NH{q', 17
            graveyardLevelOf[address(msg.sender)].field_8 = uint8(graveyardLevelOf[address(msg.sender)].field_8 + 1)
            if ext_call.return_data[0] < 10^18 * t * s:
                revert with 'NH{q', 17
            graveyardLevelOf[address(msg.sender)].field_256 = ext_call.return_data[0] - (10^18 * t * s)
    if graveyardLevelOf[address(msg.sender)].field_0 > 2:
        revert with 'NH{q', 33
    if stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if stor2[idx].field_768 != graveyardLevelOf[address(msg.sender)].field_768:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx >= stor2.length:
                revert with 'NH{q', 50
            if graveyardLevelOf[address(msg.sender)].field_0 > 2:
                revert with 'NH{q', 33
            stor2[idx].field_0 = graveyardLevelOf[address(msg.sender)].field_0
            stor2[idx].field_8 = graveyardLevelOf[address(msg.sender)].field_8
            stor2[idx].field_256 = graveyardLevelOf[address(msg.sender)].field_256
            stor2[idx].field_512 = graveyardLevelOf[address(msg.sender)].field_512
            stor2[idx].field_768 = graveyardLevelOf[address(msg.sender)].field_768
            emit 0xa49b8576: uint8(graveyardLevelOf[address(msg.sender)].field_8 + 1), msg.sender
    emit 0xa49b8576: uint8(graveyardLevelOf[address(msg.sender)].field_8 + 1), msg.sender
}

function harvestAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor3.0xf1c0ddff with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if graveyardLevelOf[address(arg1)].field_0 > 2:
        revert with 'NH{q', 33
    if graveyardLevelOf[address(arg1)].field_0 == 1:
        if baseStakingAmount > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if block.timestamp < graveyardLevelOf[address(arg1)].field_512:
            revert with 'NH{q', 17
        if block.timestamp - graveyardLevelOf[address(arg1)].field_512 and baseStakingAmount + ext_call.return_data[0] > -1 / block.timestamp - graveyardLevelOf[address(arg1)].field_512:
            revert with 'NH{q', 17
        if (baseStakingAmount * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512) and graveyardLevelOf[address(arg1)].field_8 > -1 / (baseStakingAmount * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512):
            revert with 'NH{q', 17
        if (baseStakingAmount * block.timestamp * graveyardLevelOf[address(arg1)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(arg1)].field_8) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) and purpleTeamStakingMultipler > -1 / (baseStakingAmount * block.timestamp * graveyardLevelOf[address(arg1)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(arg1)].field_8) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8):
            revert with 'NH{q', 17
        return ((baseStakingAmount * block.timestamp * graveyardLevelOf[address(arg1)].field_8 * purpleTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(arg1)].field_8 * purpleTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8 * purpleTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8 * purpleTeamStakingMultipler))
    if graveyardLevelOf[address(arg1)].field_0 > 2:
        revert with 'NH{q', 33
    if baseStakingAmount > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if block.timestamp < graveyardLevelOf[address(arg1)].field_512:
        revert with 'NH{q', 17
    if block.timestamp - graveyardLevelOf[address(arg1)].field_512 and baseStakingAmount + ext_call.return_data[0] > -1 / block.timestamp - graveyardLevelOf[address(arg1)].field_512:
        revert with 'NH{q', 17
    if (baseStakingAmount * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512) and graveyardLevelOf[address(arg1)].field_8 > -1 / (baseStakingAmount * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512):
        revert with 'NH{q', 17
    if graveyardLevelOf[address(arg1)].field_0 != 2:
        if (baseStakingAmount * block.timestamp * graveyardLevelOf[address(arg1)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(arg1)].field_8) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) and 1 > -1 / (baseStakingAmount * block.timestamp * graveyardLevelOf[address(arg1)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(arg1)].field_8) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8):
            revert with 'NH{q', 17
        return ((baseStakingAmount * block.timestamp * graveyardLevelOf[address(arg1)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(arg1)].field_8) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8))
    if (baseStakingAmount * block.timestamp * graveyardLevelOf[address(arg1)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(arg1)].field_8) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) and greenTeamStakingMultipler > -1 / (baseStakingAmount * block.timestamp * graveyardLevelOf[address(arg1)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(arg1)].field_8) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8):
        revert with 'NH{q', 17
    return ((baseStakingAmount * block.timestamp * graveyardLevelOf[address(arg1)].field_8 * greenTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(arg1)].field_8 * greenTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8 * greenTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(arg1)].field_512 * graveyardLevelOf[address(arg1)].field_8 * greenTeamStakingMultipler))
}

function harvest() {
    staticcall stor3.0xf1c0ddff with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if graveyardLevelOf[address(msg.sender)].field_0 > 2:
        revert with 'NH{q', 33
    if graveyardLevelOf[address(msg.sender)].field_0 == 1:
        if baseStakingAmount > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if block.timestamp < graveyardLevelOf[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if block.timestamp - graveyardLevelOf[address(msg.sender)].field_512 and baseStakingAmount + ext_call.return_data[0] > -1 / block.timestamp - graveyardLevelOf[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if (baseStakingAmount * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512) and graveyardLevelOf[address(msg.sender)].field_8 > -1 / (baseStakingAmount * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512):
            revert with 'NH{q', 17
        if (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) and purpleTeamStakingMultipler > -1 / (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8):
            revert with 'NH{q', 17
        if (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) <= 0:
            revert with 0, 'Nothing to harvest'
        require ext_code.size(address(stor5.field_0))
        call address(stor5.field_0).0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        graveyardLevelOf[address(msg.sender)].field_512 = block.timestamp
        if graveyardLevelOf[address(msg.sender)].field_256 > (-1 * baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) + (-1 * ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) + (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) + (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - 1:
            revert with 'NH{q', 17
        graveyardLevelOf[address(msg.sender)].field_256 = graveyardLevelOf[address(msg.sender)].field_256 + (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler)
        if graveyardLevelOf[address(msg.sender)].field_0 > 2:
            revert with 'NH{q', 33
        if stor2.length:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                if stor2[idx].field_768 != graveyardLevelOf[address(msg.sender)].field_768:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if idx >= stor2.length:
                    revert with 'NH{q', 50
                if graveyardLevelOf[address(msg.sender)].field_0 > 2:
                    revert with 'NH{q', 33
                stor2[idx].field_0 = graveyardLevelOf[address(msg.sender)].field_0
                stor2[idx].field_8 = graveyardLevelOf[address(msg.sender)].field_8
                stor2[idx].field_256 = graveyardLevelOf[address(msg.sender)].field_256
                stor2[idx].field_512 = graveyardLevelOf[address(msg.sender)].field_512
                stor2[idx].field_768 = graveyardLevelOf[address(msg.sender)].field_768
                emit Harvest(((baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler)), msg.sender);
        emit Harvest(((baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * purpleTeamStakingMultipler)), msg.sender);
    else:
        if graveyardLevelOf[address(msg.sender)].field_0 > 2:
            revert with 'NH{q', 33
        if baseStakingAmount > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        if block.timestamp < graveyardLevelOf[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if block.timestamp - graveyardLevelOf[address(msg.sender)].field_512 and baseStakingAmount + ext_call.return_data[0] > -1 / block.timestamp - graveyardLevelOf[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if (baseStakingAmount * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512) and graveyardLevelOf[address(msg.sender)].field_8 > -1 / (baseStakingAmount * block.timestamp) + (ext_call.return_data[0] * block.timestamp) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512):
            revert with 'NH{q', 17
        if graveyardLevelOf[address(msg.sender)].field_0 != 2:
            if (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) and 1 > -1 / (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8):
                revert with 'NH{q', 17
            if (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) <= 0:
                revert with 0, 'Nothing to harvest'
            require ext_code.size(address(stor5.field_0))
            call address(stor5.field_0).0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            graveyardLevelOf[address(msg.sender)].field_512 = block.timestamp
            if graveyardLevelOf[address(msg.sender)].field_256 > (-1 * baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (-1 * ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - 1:
                revert with 'NH{q', 17
            graveyardLevelOf[address(msg.sender)].field_256 = graveyardLevelOf[address(msg.sender)].field_256 + (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8)
            if graveyardLevelOf[address(msg.sender)].field_0 > 2:
                revert with 'NH{q', 33
            if stor2.length:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    if stor2[idx].field_768 != graveyardLevelOf[address(msg.sender)].field_768:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if graveyardLevelOf[address(msg.sender)].field_0 > 2:
                        revert with 'NH{q', 33
                    stor2[idx].field_0 = graveyardLevelOf[address(msg.sender)].field_0
                    stor2[idx].field_8 = graveyardLevelOf[address(msg.sender)].field_8
                    stor2[idx].field_256 = graveyardLevelOf[address(msg.sender)].field_256
                    stor2[idx].field_512 = graveyardLevelOf[address(msg.sender)].field_512
                    stor2[idx].field_768 = graveyardLevelOf[address(msg.sender)].field_768
                    emit Harvest(((baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8)), msg.sender);
            emit Harvest(((baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8)), msg.sender);
        else:
            if (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) and greenTeamStakingMultipler > -1 / (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8):
                revert with 'NH{q', 17
            if (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) <= 0:
                revert with 0, 'Nothing to harvest'
            require ext_code.size(address(stor5.field_0))
            call address(stor5.field_0).0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            graveyardLevelOf[address(msg.sender)].field_512 = block.timestamp
            if graveyardLevelOf[address(msg.sender)].field_256 > (-1 * baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) + (-1 * ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) + (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) + (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - 1:
                revert with 'NH{q', 17
            graveyardLevelOf[address(msg.sender)].field_256 = graveyardLevelOf[address(msg.sender)].field_256 + (baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler)
            if graveyardLevelOf[address(msg.sender)].field_0 > 2:
                revert with 'NH{q', 33
            if stor2.length:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    if stor2[idx].field_768 != graveyardLevelOf[address(msg.sender)].field_768:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if idx >= stor2.length:
                        revert with 'NH{q', 50
                    if graveyardLevelOf[address(msg.sender)].field_0 > 2:
                        revert with 'NH{q', 33
                    stor2[idx].field_0 = graveyardLevelOf[address(msg.sender)].field_0
                    stor2[idx].field_8 = graveyardLevelOf[address(msg.sender)].field_8
                    stor2[idx].field_256 = graveyardLevelOf[address(msg.sender)].field_256
                    stor2[idx].field_512 = graveyardLevelOf[address(msg.sender)].field_512
                    stor2[idx].field_768 = graveyardLevelOf[address(msg.sender)].field_768
                    emit Harvest(((baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler)), msg.sender);
            emit Harvest(((baseStakingAmount * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) + (ext_call.return_data[0] * block.timestamp * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (baseStakingAmount * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler) - (ext_call.return_data[0] * graveyardLevelOf[address(msg.sender)].field_512 * graveyardLevelOf[address(msg.sender)].field_8 * greenTeamStakingMultipler)), msg.sender);
}



}
