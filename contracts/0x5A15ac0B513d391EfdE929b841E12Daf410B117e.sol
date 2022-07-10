contract main {




// =====================  Runtime code  =====================


const sub_4e20a02c(?) = 24000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint8 stor6; offset 160
uint128 stor6; offset 160
address operatorAddress;
address sub_e89e8382Address;
address sub_3e5f13d4Address;
uint256 taxRate;
uint8 burnTax;
uint256 burnThreshold;
uint8 sub_8d3cc818; offset 160
uint128 stor12; offset 160
address sub_c3bdf613Address;
array of uint256 sub_42c6b4f1;
array of uint256 sub_5c29908d;
mapping of uint8 stor15;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function burnTax() payable {
    return bool(burnTax)
}

function decimals() payable {
    return decimals
}

function sub_3e5f13d4(?) payable {
    return sub_3e5f13d4Address
}

function sub_42c6b4f1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_42c6b4f1.length
    return uint256(sub_42c6b4f1[arg1])
}

function burnThreshold() payable {
    return burnThreshold
}

function operator() payable {
    return operatorAddress
}

function sub_5c29908d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5c29908d.length
    return sub_5c29908d[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function taxRate() payable {
    return taxRate
}

function sub_8d3cc818(?) payable {
    return bool(sub_8d3cc818)
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function rewardPoolDistributed() payable {
    return bool(uint8(stor6.field_160))
}

function sub_a6431bba(?) payable {
    return sub_42c6b4f1.length
}

function sub_c3bdf613(?) payable {
    return sub_c3bdf613Address
}

function excludedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e89e8382(?) payable {
    return sub_e89e8382Address
}

function isAddressExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor15[address(arg1)])
}

function sub_ee2a9535(?) payable {
    return sub_5c29908d.length
}

function _fallback() payable {
    revert
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function sub_65bbacd9(?) payable {
    if sub_3e5f13d4Address != msg.sender:
        revert with 0, 'Caller is not the tax office'
    Mask(96, 0, stor12.field_160) = 0
}

function sub_ff87fc7c(?) payable {
    if sub_3e5f13d4Address != msg.sender:
        revert with 0, 'Caller is not the tax office'
    Mask(96, 0, stor12.field_160) = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_514a3e99(?) payable {
    require calldata.size - 4 >= 32
    if sub_3e5f13d4Address != msg.sender:
        revert with 0, 'Caller is not the tax office'
    burnTax = uint8(arg1)
}

function setBurnThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_3e5f13d4Address != msg.sender:
        revert with 0, 'Caller is not the tax office'
    burnThreshold = arg1
    return 0
}

function sub_69356d47(?) payable {
    require calldata.size - 4 >= 32
    if sub_3e5f13d4Address != msg.sender:
        revert with 0, 'Caller is not the tax office'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6574617820636f6c6c6563746f722061646472657373206d757374206265206e6f6e2d7a65726f20616464726573,
                    mem[210 len 18]
    sub_c3bdf613Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x736f70657261746f723a207a65726f206164647265737320676976656e20666f72206e6577206f70657261746f,
                    mem[209 len 19]
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function setTaxRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_3e5f13d4Address != msg.sender:
        revert with 0, 'Caller is not the tax office'
    if sub_8d3cc818:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x736175746f2063616c63756c617465207461782063616e6e6f7420626520656e61626c65,
                    mem[200 len 28]
    if arg1 >= 500:
        revert with 0, 'tax equal or bigger to 5%'
    taxRate = arg1
}

function excludeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7343616c6c6572206973206e6f7420746865206f70657261746f72206f722074686520746178206f66666963,
                        mem[208 len 20]
    if stor15[address(arg1)]:
        revert with 0, 'address can't be excluded'
    stor15[address(arg1)] = 1
    return 1
}

function includeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7343616c6c6572206973206e6f7420746865206f70657261746f72206f722074686520746178206f66666963,
                        mem[208 len 20]
    if not stor15[address(arg1)]:
        revert with 0, 'address can't be included'
    stor15[address(arg1)] = 0
    return 1
}

function setTaxTiersRate(uint8 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_3e5f13d4Address != msg.sender:
        revert with 0, 'Caller is not the tax office'
    if arg1 < 0:
        revert with 0, 'Index has to be higher than 0'
    if arg1 >= sub_5c29908d.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x72496e6465782068617320746f206c6f776572207468616e20636f756e74206f66207461782074696572,
                    mem[206 len 22]
    sub_5c29908d[arg1] = arg2
    return 1
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_5678bfad(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7343616c6c6572206973206e6f7420746865206f70657261746f72206f722074686520746178206f66666963,
                        mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x736f7261636c6520616464726573732063616e6e6f74206265203020616464726573,
                    mem[198 len 30]
    sub_e89e8382Address = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_3f07d76a(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if sub_3e5f13d4Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x7343616c6c6572206973206e6f7420746865206f70657261746f72206f722074686520746178206f66666963,
                        mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x65746178206f666669636520616464726573732063616e6e6f74206265203020616464726573,
                    mem[202 len 26]
    emit 0x75237613: sub_3e5f13d4Address, arg1
    sub_3e5f13d4Address = arg1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return (balanceOf[address(arg1)] > balanceOf[address(arg1)])
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function distributeReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if uint8(stor6.field_160):
        revert with 0, 'only can distribute once'
    if not arg1:
        revert with 0, '!_genesisPool'
    Mask(96, 0, stor6.field_160) = 1
    if totalSupply + 24000 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 24000 * 10^18
    if balanceOf[address(arg1)] + 24000 * 10^18 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += 24000 * 10^18
    emit Transfer(24000 * 10^18, 0, arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setTaxTiersTwap(uint8 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_3e5f13d4Address != msg.sender:
        revert with 0, 'Caller is not the tax office'
    if arg1 < 0:
        revert with 0, 'Index has to be higher than 0'
    if arg1 >= sub_42c6b4f1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x72496e6465782068617320746f206c6f776572207468616e20636f756e74206f66207461782074696572,
                    mem[206 len 22]
    if arg1 > 0:
        require uint8(arg1 - 1) < sub_42c6b4f1.length
        require arg2 > uint256(sub_42c6b4f1[uint8(arg1 - 1)])
    if 1 > sub_42c6b4f1.length:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 < sub_42c6b4f1.length - 1:
        require uint8(arg1 + 1) < sub_42c6b4f1.length
        require arg2 < uint256(sub_42c6b4f1[uint8(arg1 + 1)])
    require arg1 < sub_42c6b4f1.length
    uint256(sub_42c6b4f1[arg1]) = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x656f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7345524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_8d3cc818:
        mem[132] = 10^18
        require ext_code.size(sub_e89e8382Address)
        staticcall sub_e89e8382Address.consult(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(this.address), 10^18
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x645468726976653a206661696c656420746f206665746368205448524956452070726963652066726f6d204f7261636c,
                        mem[212 len 16]
        require return_data.size >= 32
        if not sub_8d3cc818:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            mem[64] = 160
            mem[96] = 30
            mem[128] = 'SafeMath: subtraction overflow'
            if 1 > uint8(sub_42c6b4f1.length):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = uint8(sub_42c6b4f1.length) - 1
            while uint8(idx) >= 0:
                require uint8(idx) < sub_42c6b4f1.length
                mem[0] = 13
                if Mask(144, 0, ext_call.return_data[0]) < uint256(sub_42c6b4f1[uint8(idx)]):
                    idx = idx - 1
                    continue 
                require uint8(idx) < sub_5c29908d.length
                if sub_5c29908d[uint8(idx)] >= 500:
                    revert with 0, 'tax equal or bigger to 5%'
                require uint8(idx) < sub_5c29908d.length
                taxRate = sub_5c29908d[uint8(idx)]
                if not sub_5c29908d[uint8(idx)]:
                    if not arg1:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                    mem[192 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if arg3 > balanceOf[address(arg1)]:
                        mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[260] = 32
                        idx = 0
                        while idx < 38:
                            mem[idx + 324] = mem[idx + 192]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[382 len 6]
                        revert with 0, 32, 38, mem[324 len 64]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    mem[288 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                    if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                        if not arg1:
                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        return 1
                    mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[356] = 32
                    idx = 0
                    while idx < 40:
                        mem[idx + 420] = mem[idx + 288]
                        idx = idx + 32
                        continue 
                    mem[452] = mem[476 len 8]
                    revert with 0, 32, 40, mem[420 len 64]
                if stor15[address(arg1)]:
                    if not arg1:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                    mem[192 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if arg3 > balanceOf[address(arg1)]:
                        mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[260] = 32
                        idx = 0
                        while idx < 38:
                            mem[idx + 324] = mem[idx + 192]
                            idx = idx + 32
                            continue 
                        mem[356] = mem[382 len 6]
                        revert with 0, 32, 38, mem[324 len 64]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    mem[288 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                    if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                        if not arg1:
                            revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        return 1
                    mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[356] = 32
                    idx = 0
                    while idx < 40:
                        mem[idx + 420] = mem[idx + 288]
                        idx = idx + 32
                        continue 
                    mem[452] = mem[476 len 8]
                    revert with 0, 32, 40, mem[420 len 64]
                if Mask(144, 0, ext_call.return_data[0]) < burnThreshold:
                    if not arg3:
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 33, 0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                        mem[192 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if 0 > balanceOf[address(arg1)]:
                            mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[260] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + 324] = mem[idx + 192]
                                idx = idx + 32
                                continue 
                            mem[356] = mem[386 len 2]
                            revert with 0, 32, 34, mem[324 len 64]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, arg1, 0);
                        if not arg1:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[361 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[359 len 29]
                        mem[288 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg3 > balanceOf[address(arg1)]:
                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[356] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 420] = mem[idx + 288]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[478 len 6]
                            revert with 0, 32, 38, mem[420 len 64]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        require arg3
                        if arg3 * taxRate / arg3 != taxRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if arg3 * taxRate / 10000 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg1:
                            revert with 0, 32, 33, 0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                        mem[192 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                        if arg3 * taxRate / 10000 > balanceOf[address(arg1)]:
                            mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[260] = 32
                            idx = 0
                            while idx < 34:
                                mem[idx + 324] = mem[idx + 192]
                                idx = idx + 32
                                continue 
                            mem[356] = mem[386 len 2]
                            revert with 0, 32, 34, mem[324 len 64]
                        balanceOf[address(arg1)] -= arg3 * taxRate / 10000
                        if arg3 * taxRate / 10000 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg3 * taxRate / 10000
                        emit Transfer((arg3 * taxRate / 10000), arg1, 0);
                        if not arg1:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[361 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[359 len 29]
                        mem[288 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg3 - (arg3 * taxRate / 10000) > balanceOf[address(arg1)]:
                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[356] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 420] = mem[idx + 288]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[478 len 6]
                            revert with 0, 32, 38, mem[420 len 64]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxRate / 10000)
                        if balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 10000) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 10000)
                        emit Transfer((arg3 - (arg3 * taxRate / 10000)), arg1, arg2);
                else:
                    if not arg3:
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if burnTax:
                            if not arg1:
                                revert with 0, 32, 33, 0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                            mem[192 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            if 0 > balanceOf[address(arg1)]:
                                mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[260] = 32
                                idx = 0
                                while idx < 34:
                                    mem[idx + 324] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[356] = mem[386 len 2]
                                revert with 0, 32, 34, mem[324 len 64]
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit Transfer(0, arg1, 0);
                        else:
                            if not arg1:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not sub_c3bdf613Address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            mem[192 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            if 0 > balanceOf[address(arg1)]:
                                mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[260] = 32
                                idx = 0
                                while idx < 38:
                                    mem[idx + 324] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[356] = mem[382 len 6]
                                revert with 0, 32, 38, mem[324 len 64]
                            if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, sub_c3bdf613Address);
                        if not arg1:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[361 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[359 len 29]
                        mem[288 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg3 > balanceOf[address(arg1)]:
                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[356] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 420] = mem[idx + 288]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[478 len 6]
                            revert with 0, 32, 38, mem[420 len 64]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        require arg3
                        if arg3 * taxRate / arg3 != taxRate:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if arg3 * taxRate / 10000 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if burnTax:
                            if not arg1:
                                revert with 0, 32, 33, 0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
                            mem[192 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                            if arg3 * taxRate / 10000 > balanceOf[address(arg1)]:
                                mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[260] = 32
                                idx = 0
                                while idx < 34:
                                    mem[idx + 324] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[356] = mem[386 len 2]
                                revert with 0, 32, 34, mem[324 len 64]
                            balanceOf[address(arg1)] -= arg3 * taxRate / 10000
                            if arg3 * taxRate / 10000 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg3 * taxRate / 10000
                            emit Transfer((arg3 * taxRate / 10000), arg1, 0);
                        else:
                            if not arg1:
                                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
                            if not sub_c3bdf613Address:
                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
                            mem[192 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            if arg3 * taxRate / 10000 > balanceOf[address(arg1)]:
                                mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[260] = 32
                                idx = 0
                                while idx < 38:
                                    mem[idx + 324] = mem[idx + 192]
                                    idx = idx + 32
                                    continue 
                                mem[356] = mem[382 len 6]
                                revert with 0, 32, 38, mem[324 len 64]
                            balanceOf[address(arg1)] -= arg3 * taxRate / 10000
                            if balanceOf[address(stor12.field_0)] + (arg3 * taxRate / 10000) < balanceOf[address(stor12.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor12.field_0)] += arg3 * taxRate / 10000
                            emit Transfer((arg3 * taxRate / 10000), arg1, sub_c3bdf613Address);
                        if not arg1:
                            revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[361 len 27]
                        if not arg2:
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[359 len 29]
                        mem[288 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg3 - (arg3 * taxRate / 10000) > balanceOf[address(arg1)]:
                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[356] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 420] = mem[idx + 288]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[478 len 6]
                            revert with 0, 32, 38, mem[420 len 64]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxRate / 10000)
                        if balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 10000) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 10000)
                        emit Transfer((arg3 - (arg3 * taxRate / 10000)), arg1, arg2);
                mem[384 len 40] = 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63
                if arg3 <= allowance[address(arg1)][address(msg.sender)]:
                    if not arg1:
                        revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[552 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[550 len 30]
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
                mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[452] = 32
                idx = 0
                while idx < 40:
                    mem[idx + 516] = mem[idx + 384]
                    idx = idx + 32
                    continue 
                mem[548] = mem[572 len 8]
                revert with 0, 32, 40, mem[516 len 64]
            if not arg1:
                revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[328 len 24],
                            mem[376 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    else:
        if not taxRate:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if stor15[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if not arg3:
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnTax:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[197 len 31]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit Transfer(0, arg1, 0);
                    else:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not sub_c3bdf613Address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if 0 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        if balanceOf[address(stor12.field_0)] < balanceOf[address(stor12.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, sub_c3bdf613Address);
                    if not arg1:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[262 len 26],
                                    mem[314 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    require arg3
                    if arg3 * taxRate / arg3 != taxRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg3 * taxRate / 10000 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnTax:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x7345524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                        mem[197 len 31]
                        if arg3 * taxRate / 10000 > balanceOf[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
                        balanceOf[address(arg1)] -= arg3 * taxRate / 10000
                        if arg3 * taxRate / 10000 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg3 * taxRate / 10000
                        emit Transfer((arg3 * taxRate / 10000), arg1, 0);
                    else:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not sub_c3bdf613Address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg3 * taxRate / 10000 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(arg1)] -= arg3 * taxRate / 10000
                        if balanceOf[address(stor12.field_0)] + (arg3 * taxRate / 10000) < balanceOf[address(stor12.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(stor12.field_0)] += arg3 * taxRate / 10000
                        emit Transfer((arg3 * taxRate / 10000), arg1, sub_c3bdf613Address);
                    if not arg1:
                        revert with 0, 32, 37, 0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
                    if arg3 - (arg3 * taxRate / 10000) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[262 len 26],
                                    mem[314 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * taxRate / 10000)
                    if balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 10000) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxRate / 10000)
                    emit Transfer((arg3 - (arg3 * taxRate / 10000)), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[360 len 24],
                                mem[408 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x6545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
