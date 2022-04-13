contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 sub_7965982d;
uint256 sub_279275b7;
address sub_b003f96bAddress;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint256 balanceOf;
uint8 paused; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_279275b7(?) {
    return sub_279275b7
}

function decimals() {
    return decimals
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7965982d(?) {
    return sub_7965982d
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b003f96b(?) {
    return sub_b003f96bAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require paused
    paused = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    paused = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not paused
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateFee(uint256 arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    sub_7965982d = arg1
    sub_279275b7 = arg2
    sub_b003f96bAddress = arg3
}

function blackListAddress(address arg1, bool arg2) {
    require not paused
    require msg.sender == owner
    require arg2 != bool(stor5[address(arg1)])
    stor5[address(arg1)] = uint8(arg2)
    emit Blacklist(arg2, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, 0, arg1);
    emit Transfer(arg2, 0, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not paused
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not paused
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not paused
    require not stor5[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    if sub_7965982d <= 0:
        if sub_279275b7 <= 0:
            require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if msg.sender == sub_b003f96bAddress:
                require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require sub_279275b7
                require 100 / sub_279275b7
                require arg2 / 100 / sub_279275b7 <= totalSupply
                totalSupply -= arg2 / 100 / sub_279275b7
                emit Transfer((arg2 / 100 / sub_279275b7), msg.sender, 0);
                require arg2 / 100 / sub_279275b7 <= arg2
                require arg2 - (arg2 / 100 / sub_279275b7) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = arg2 - (arg2 / 100 / sub_279275b7) + balanceOf[address(arg1)]
                emit Transfer((arg2 - (arg2 / 100 / sub_279275b7)), msg.sender, arg1);
    else:
        if msg.sender == sub_b003f96bAddress:
            if sub_279275b7 <= 0:
                require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if msg.sender == sub_b003f96bAddress:
                    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    require sub_279275b7
                    require 100 / sub_279275b7
                    require arg2 / 100 / sub_279275b7 <= totalSupply
                    totalSupply -= arg2 / 100 / sub_279275b7
                    emit Transfer((arg2 / 100 / sub_279275b7), msg.sender, 0);
                    require arg2 / 100 / sub_279275b7 <= arg2
                    require arg2 - (arg2 / 100 / sub_279275b7) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100 / sub_279275b7) + balanceOf[address(arg1)]
                    emit Transfer((arg2 - (arg2 / 100 / sub_279275b7)), msg.sender, arg1);
        else:
            require sub_7965982d
            require 100 / sub_7965982d
            require (arg2 / 100 / sub_7965982d) + balanceOf[stor3] >= balanceOf[stor3]
            balanceOf[stor3] += arg2 / 100 / sub_7965982d
            emit Transfer((arg2 / 100 / sub_7965982d), msg.sender, sub_b003f96bAddress);
            require arg2 / 100 / sub_7965982d <= arg2
            if sub_279275b7 <= 0:
                require arg2 - (arg2 / 100 / sub_7965982d) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = arg2 - (arg2 / 100 / sub_7965982d) + balanceOf[address(arg1)]
                emit Transfer((arg2 - (arg2 / 100 / sub_7965982d)), msg.sender, arg1);
            else:
                if msg.sender == sub_b003f96bAddress:
                    require arg2 - (arg2 / 100 / sub_7965982d) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100 / sub_7965982d) + balanceOf[address(arg1)]
                    emit Transfer((arg2 - (arg2 / 100 / sub_7965982d)), msg.sender, arg1);
                else:
                    require sub_279275b7
                    require 100 / sub_279275b7
                    require arg2 / 100 / sub_279275b7 <= totalSupply
                    totalSupply -= arg2 / 100 / sub_279275b7
                    emit Transfer((arg2 / 100 / sub_279275b7), msg.sender, 0);
                    require arg2 / 100 / sub_279275b7 <= arg2 - (arg2 / 100 / sub_7965982d)
                    require arg2 - (arg2 / 100 / sub_7965982d) - (arg2 / 100 / sub_279275b7) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = arg2 - (arg2 / 100 / sub_7965982d) - (arg2 / 100 / sub_279275b7) + balanceOf[address(arg1)]
                    emit Transfer((arg2 - (arg2 / 100 / sub_7965982d) - (arg2 / 100 / sub_279275b7)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require not stor5[msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if sub_7965982d <= 0:
        if sub_279275b7 <= 0:
            require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require arg3 <= allowance[address(arg1)][msg.sender]
            allowance[address(arg1)][msg.sender] -= arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if sub_b003f96bAddress == arg1:
                require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][msg.sender]
                allowance[address(arg1)][msg.sender] -= arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                require sub_279275b7
                require 100 / sub_279275b7
                require arg3 / 100 / sub_279275b7 <= totalSupply
                totalSupply -= arg3 / 100 / sub_279275b7
                emit Transfer((arg3 / 100 / sub_279275b7), arg1, 0);
                require arg3 / 100 / sub_279275b7 <= arg3
                require arg3 - (arg3 / 100 / sub_279275b7) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] = arg3 - (arg3 / 100 / sub_279275b7) + balanceOf[address(arg2)]
                require arg3 - (arg3 / 100 / sub_279275b7) <= allowance[address(arg1)][msg.sender]
                allowance[address(arg1)][msg.sender] = allowance[address(arg1)][msg.sender] - arg3 + (arg3 / 100 / sub_279275b7)
                emit Transfer((arg3 - (arg3 / 100 / sub_279275b7)), arg1, arg2);
    else:
        if sub_b003f96bAddress == arg1:
            if sub_279275b7 <= 0:
                require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] += arg3
                require arg3 <= allowance[address(arg1)][msg.sender]
                allowance[address(arg1)][msg.sender] -= arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if sub_b003f96bAddress == arg1:
                    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] += arg3
                    require arg3 <= allowance[address(arg1)][msg.sender]
                    allowance[address(arg1)][msg.sender] -= arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    require sub_279275b7
                    require 100 / sub_279275b7
                    require arg3 / 100 / sub_279275b7 <= totalSupply
                    totalSupply -= arg3 / 100 / sub_279275b7
                    emit Transfer((arg3 / 100 / sub_279275b7), arg1, 0);
                    require arg3 / 100 / sub_279275b7 <= arg3
                    require arg3 - (arg3 / 100 / sub_279275b7) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100 / sub_279275b7) + balanceOf[address(arg2)]
                    require arg3 - (arg3 / 100 / sub_279275b7) <= allowance[address(arg1)][msg.sender]
                    allowance[address(arg1)][msg.sender] = allowance[address(arg1)][msg.sender] - arg3 + (arg3 / 100 / sub_279275b7)
                    emit Transfer((arg3 - (arg3 / 100 / sub_279275b7)), arg1, arg2);
        else:
            require sub_7965982d
            require 100 / sub_7965982d
            require (arg3 / 100 / sub_7965982d) + balanceOf[stor3] >= balanceOf[stor3]
            balanceOf[stor3] += arg3 / 100 / sub_7965982d
            emit Transfer((arg3 / 100 / sub_7965982d), arg1, sub_b003f96bAddress);
            require arg3 / 100 / sub_7965982d <= arg3
            if sub_279275b7 <= 0:
                require arg3 - (arg3 / 100 / sub_7965982d) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                balanceOf[address(arg2)] = arg3 - (arg3 / 100 / sub_7965982d) + balanceOf[address(arg2)]
                require arg3 - (arg3 / 100 / sub_7965982d) <= allowance[address(arg1)][msg.sender]
                allowance[address(arg1)][msg.sender] = allowance[address(arg1)][msg.sender] - arg3 + (arg3 / 100 / sub_7965982d)
                emit Transfer((arg3 - (arg3 / 100 / sub_7965982d)), arg1, arg2);
            else:
                if sub_b003f96bAddress == arg1:
                    require arg3 - (arg3 / 100 / sub_7965982d) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100 / sub_7965982d) + balanceOf[address(arg2)]
                    require arg3 - (arg3 / 100 / sub_7965982d) <= allowance[address(arg1)][msg.sender]
                    allowance[address(arg1)][msg.sender] = allowance[address(arg1)][msg.sender] - arg3 + (arg3 / 100 / sub_7965982d)
                    emit Transfer((arg3 - (arg3 / 100 / sub_7965982d)), arg1, arg2);
                else:
                    require sub_279275b7
                    require 100 / sub_279275b7
                    require arg3 / 100 / sub_279275b7 <= totalSupply
                    totalSupply -= arg3 / 100 / sub_279275b7
                    emit Transfer((arg3 / 100 / sub_279275b7), arg1, 0);
                    require arg3 / 100 / sub_279275b7 <= arg3 - (arg3 / 100 / sub_7965982d)
                    require arg3 - (arg3 / 100 / sub_7965982d) - (arg3 / 100 / sub_279275b7) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
                    balanceOf[address(arg2)] = arg3 - (arg3 / 100 / sub_7965982d) - (arg3 / 100 / sub_279275b7) + balanceOf[address(arg2)]
                    require arg3 - (arg3 / 100 / sub_7965982d) - (arg3 / 100 / sub_279275b7) <= allowance[address(arg1)][msg.sender]
                    allowance[address(arg1)][msg.sender] = allowance[address(arg1)][msg.sender] - arg3 + (arg3 / 100 / sub_7965982d) + (arg3 / 100 / sub_279275b7)
                    emit Transfer((arg3 - (arg3 / 100 / sub_7965982d) - (arg3 / 100 / sub_279275b7)), arg1, arg2);
    return 1
}



}
