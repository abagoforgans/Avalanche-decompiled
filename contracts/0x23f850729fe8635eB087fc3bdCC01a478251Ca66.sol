contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor5; offset 8
uint256 stor5; offset 8
uint256 cap;
uint8 stor7;
address sub_1cd273cfAddress; offset 8
address sub_715df33bAddress;
address sub_9c495671Address;
address sub_ae5b5b11Address;

function name() payable {
    return name[0 len name.length]
}

function initialized() payable {
    return bool(stor7)
}

function totalSupply() payable {
    return totalSupply
}

function sub_1cd273cf(?) payable {
    return sub_1cd273cfAddress
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
}

function paused() payable {
    return bool(uint8(stor5.field_8))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_715df33b(?) payable {
    return sub_715df33bAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_9c495671(?) payable {
    return sub_9c495671Address
}

function sub_ae5b5b11(?) payable {
    return sub_ae5b5b11Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function pause() payable {
    if sub_715df33bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x2e4f6e6c79207468652070617573657220616464726573732063616e2063616c6c2074686973206d6574686f64,
                    mem[209 len 19]
    if uint8(stor5.field_8):
        revert with 0, 'Pausable: paused'
    Mask(248, 0, stor5.field_8) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if sub_715df33bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x2e4f6e6c79207468652070617573657220616464726573732063616e2063616c6c2074686973206d6574686f64,
                    mem[209 len 19]
    if not uint8(stor5.field_8):
        revert with 0, 'Pausable: not paused'
    Mask(248, 0, stor5.field_8) = 0
    emit Unpaused(msg.sender);
}

function changeDeployer(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_1cd273cfAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734f6e6c7920746865206465706c6f79696e6720616464726573732063616e2063616c6c2074686973206d6574686f64,
                    mem[212 len 16]
    sub_1cd273cfAddress = arg1
    emit ChangedDeployerAddress(sub_1cd273cfAddress, msg.sender);
}

function changeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_1cd273cfAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734f6e6c7920746865206465706c6f79696e6720616464726573732063616e2063616c6c2074686973206d6574686f64,
                    mem[212 len 16]
    if uint8(stor5.field_8):
        revert with 0, 'Pausable: paused'
    sub_9c495671Address = arg1
    emit ChangedMinterAddress(arg1, msg.sender);
}

function changePauser(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_1cd273cfAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734f6e6c7920746865206465706c6f79696e6720616464726573732063616e2063616c6c2074686973206d6574686f64,
                    mem[212 len 16]
    if uint8(stor5.field_8):
        revert with 0, 'Pausable: paused'
    sub_715df33bAddress = arg1
    emit ChangedPauserAddress(arg1, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e4552433230556e6275726e61626c653a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[210 len 18]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4552433230556e6275726e61626c653a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[208 len 20]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function init(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor7:
        revert with 0, 'Contract is already initialized.'
    if sub_1cd273cfAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734f6e6c7920746865206465706c6f79696e6720616464726573732063616e2063616c6c2074686973206d6574686f64,
                    mem[212 len 16]
    if not arg1:
        revert with 0, '_minterAddress cannot be 0x'
    if not arg2:
        revert with 0, '_pauserAddress cannot be 0x'
    if not arg3:
        revert with 0, '_reserveAddress cannot be 0x'
    sub_9c495671Address = arg1
    sub_715df33bAddress = arg2
    sub_ae5b5b11Address = arg3
    stor7 = 1
    emit InitializedContract(arg3);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    47,
                    0x654552433230556e6275726e61626c653a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[175 len 17],
                    mem[209 len 15]
    if not msg.sender:
        revert with 0, 
                    32,
                    46,
                    0x2e4552433230556e6275726e61626c653a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[306 len 18]
    if not arg1:
        revert with 0, 32, 44, 0xfe4552433230556e6275726e61626c653a20617070726f766520746f20746865207a65726f20616464726573, mem[304 len 20]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e4552433230556e6275726e61626c653a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[210 len 18]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe4552433230556e6275726e61626c653a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[208 len 20]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_9c495671Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x734f6e6c7920746865206d696e74657220616464726573732063616e2063616c6c2074686973206d6574686f64,
                    mem[209 len 19]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433230556e6275726e61626c653a206d696e7420746f20746865207a65726f20616464726573,
                    mem[205 len 23]
    if uint8(stor5.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e45524332305061757361626c65556e6275726e61626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[216 len 12]
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if totalSupply + arg2 > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x734552433230556e6275726e61626c653a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[211 len 17]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x644552433230556e6275726e61626c653a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[209 len 19]
    if uint8(stor5.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e45524332305061757361626c65556e6275726e61626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[216 len 12]
    if not msg.sender:
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if totalSupply + arg2 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x734552433230556e6275726e61626c653a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[176 len 16],
                    mem[208 len 16]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x734552433230556e6275726e61626c653a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[211 len 17]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x644552433230556e6275726e61626c653a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[209 len 19]
    if uint8(stor5.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e45524332305061757361626c65556e6275726e61626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[216 len 12]
    if not arg1:
        if totalSupply + arg3 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if totalSupply + arg3 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    48,
                    0x734552433230556e6275726e61626c653a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[176 len 16],
                    mem[208 len 16]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    50,
                    0x6f4552433230556e6275726e61626c653a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[274 len 14],
                    Mask(144, -256, mem[274 len 14]) << 256
    if not arg1:
        revert with 0, 
                    32,
                    46,
                    0x2e4552433230556e6275726e61626c653a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[402 len 18]
    if not msg.sender:
        revert with 0, 32, 44, 0xfe4552433230556e6275726e61626c653a20617070726f766520746f20746865207a65726f20616464726573, mem[400 len 20]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
