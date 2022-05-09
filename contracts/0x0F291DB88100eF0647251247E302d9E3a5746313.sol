contract main {




// =====================  Runtime code  =====================


const name = 'TEST TOKEN'

const decimals = 9

const symbol = 'TEST TOKEN'


address owner;
address vaultAddress;
address sub_3e15f25eAddress;
uint256 totalSupply;
uint256 sub_33477327;
uint256 sub_cf4be394;
mapping of uint256 _balances;
mapping of uint256 allowance;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
address _routerAddress;
uint8 _tradingOpen; offset 160
uint8 sub_09afb3ce; offset 168
uint8 stor17; offset 176
address _pairAddress;

function sub_09afb3ce(?) {
    return bool(sub_09afb3ce)
}

function totalSupply() {
    return totalSupply
}

function sub_33477327(?) {
    return sub_33477327
}

function sub_3e15f25e(?) {
    return sub_3e15f25eAddress
}

function _balances(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return _balances[address(arg1)]
}

function owner() {
    return owner
}

function _pair() {
    return _pairAddress
}

function _tradingOpen() {
    return bool(_tradingOpen)
}

function sub_cf4be394(?) {
    return sub_cf4be394
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _router() {
    return _routerAddress
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setBuyFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
    stor15 = arg2
}

function setSellFees(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
    stor15 = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if vaultAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x775661756c744f776e65643a2063616c6c6572206973206e6f7420746865205661756c,
                    mem[199 len 29]
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    _balances[address(arg1)] += arg2
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if _pairAddress != msg.sender:
        if stor17:
            if arg2 > _balances[address(msg.sender)]:
                revert with 0, 'Insufficient Balance'
            _balances[address(msg.sender)] -= arg2
            if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg1 != _pairAddress:
                stor14 = stor12
            else:
                stor14 = stor13
            if arg1 != owner:
                if arg1 != _pairAddress:
                    if arg2 > sub_33477327:
                        if not stor10[address(msg.sender)]:
                            if not stor10[address(arg1)]:
                                revert with 0, 'TX Limit Exceeded'
                else:
                    if arg2 > sub_cf4be394:
                        if not stor10[address(msg.sender)]:
                            if not stor10[address(arg1)]:
                                revert with 0, 'TX Limit Exceeded'
            if arg2 > _balances[address(msg.sender)]:
                revert with 0, 'Insufficient Balance'
            _balances[address(msg.sender)] -= arg2
            if stor9[address(msg.sender)]:
                if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not arg2:
                    if stor15 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor15
                    if _balances[address(this.address)] + (0 / stor15) < _balances[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(this.address)] += 0 / stor15
                    emit Transfer((0 / stor15), msg.sender, this.address);
                    if 0 / stor15 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if _balances[address(arg1)] + arg2 - (0 / stor15) < _balances[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (0 / stor15)
                    emit Transfer((arg2 - (0 / stor15)), msg.sender, arg1);
                else:
                    require arg2
                    if arg2 * stor14 / arg2 != stor14:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor15 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor15
                    if _balances[address(this.address)] + (arg2 * stor14 / stor15) < _balances[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(this.address)] += arg2 * stor14 / stor15
                    emit Transfer((arg2 * stor14 / stor15), msg.sender, this.address);
                    if arg2 * stor14 / stor15 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if _balances[address(arg1)] + arg2 - (arg2 * stor14 / stor15) < _balances[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * stor14 / stor15)
                    emit Transfer((arg2 - (arg2 * stor14 / stor15)), msg.sender, arg1);
    else:
        if arg1 == _routerAddress:
            if arg2 > _balances[address(msg.sender)]:
                revert with 0, 'Insufficient Balance'
            _balances[address(msg.sender)] -= arg2
            if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            _balances[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor17:
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance'
                _balances[address(msg.sender)] -= arg2
                if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg1 != _pairAddress:
                    stor14 = stor12
                else:
                    stor14 = stor13
                if arg1 != owner:
                    if arg1 != _pairAddress:
                        if arg2 > sub_33477327:
                            if not stor10[address(msg.sender)]:
                                if not stor10[address(arg1)]:
                                    revert with 0, 'TX Limit Exceeded'
                    else:
                        if arg2 > sub_cf4be394:
                            if not stor10[address(msg.sender)]:
                                if not stor10[address(arg1)]:
                                    revert with 0, 'TX Limit Exceeded'
                if arg2 > _balances[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance'
                _balances[address(msg.sender)] -= arg2
                if stor9[address(msg.sender)]:
                    if _balances[address(arg1)] + arg2 < _balances[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not arg2:
                        if stor15 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor15
                        if _balances[address(this.address)] + (0 / stor15) < _balances[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(this.address)] += 0 / stor15
                        emit Transfer((0 / stor15), msg.sender, this.address);
                        if 0 / stor15 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if _balances[address(arg1)] + arg2 - (0 / stor15) < _balances[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (0 / stor15)
                        emit Transfer((arg2 - (0 / stor15)), msg.sender, arg1);
                    else:
                        require arg2
                        if arg2 * stor14 / arg2 != stor14:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor15 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor15
                        if _balances[address(this.address)] + (arg2 * stor14 / stor15) < _balances[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(this.address)] += arg2 * stor14 / stor15
                        emit Transfer((arg2 * stor14 / stor15), msg.sender, this.address);
                        if arg2 * stor14 / stor15 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if _balances[address(arg1)] + arg2 - (arg2 * stor14 / stor15) < _balances[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * stor14 / stor15)
                        emit Transfer((arg2 - (arg2 * stor14 / stor15)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][address(msg.sender)] == -1:
        if arg1 != _pairAddress:
            if stor17:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'Insufficient Balance'
                _balances[address(arg1)] -= arg3
                if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg2 != _pairAddress:
                    stor14 = stor12
                else:
                    stor14 = stor13
                if arg2 != owner:
                    if arg2 != _pairAddress:
                        if arg3 > sub_33477327:
                            if not stor10[address(arg1)]:
                                if not stor10[address(arg2)]:
                                    revert with 0, 'TX Limit Exceeded'
                    else:
                        if arg3 > sub_cf4be394:
                            if not stor10[address(arg1)]:
                                if not stor10[address(arg2)]:
                                    revert with 0, 'TX Limit Exceeded'
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'Insufficient Balance'
                _balances[address(arg1)] -= arg3
                if stor9[address(arg1)]:
                    if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if not arg3:
                        if stor15 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor15
                        if _balances[address(this.address)] + (0 / stor15) < _balances[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(this.address)] += 0 / stor15
                        emit Transfer((0 / stor15), arg1, this.address);
                        if 0 / stor15 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if _balances[address(arg2)] + arg3 - (0 / stor15) < _balances[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (0 / stor15)
                        emit Transfer((arg3 - (0 / stor15)), arg1, arg2);
                    else:
                        require arg3
                        if arg3 * stor14 / arg3 != stor14:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor15 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor15
                        if _balances[address(this.address)] + (arg3 * stor14 / stor15) < _balances[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(this.address)] += arg3 * stor14 / stor15
                        emit Transfer((arg3 * stor14 / stor15), arg1, this.address);
                        if arg3 * stor14 / stor15 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if _balances[address(arg2)] + arg3 - (arg3 * stor14 / stor15) < _balances[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (arg3 * stor14 / stor15)
                        emit Transfer((arg3 - (arg3 * stor14 / stor15)), arg1, arg2);
        else:
            if arg2 == _routerAddress:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'Insufficient Balance'
                _balances[address(arg1)] -= arg3
                if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor17:
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'Insufficient Balance'
                    _balances[address(arg1)] -= arg3
                    if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg2 != _pairAddress:
                        stor14 = stor12
                    else:
                        stor14 = stor13
                    if arg2 != owner:
                        if arg2 != _pairAddress:
                            if arg3 > sub_33477327:
                                if not stor10[address(arg1)]:
                                    if not stor10[address(arg2)]:
                                        revert with 0, 'TX Limit Exceeded'
                        else:
                            if arg3 > sub_cf4be394:
                                if not stor10[address(arg1)]:
                                    if not stor10[address(arg2)]:
                                        revert with 0, 'TX Limit Exceeded'
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'Insufficient Balance'
                    _balances[address(arg1)] -= arg3
                    if stor9[address(arg1)]:
                        if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not arg3:
                            if stor15 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor15
                            if _balances[address(this.address)] + (0 / stor15) < _balances[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            _balances[address(this.address)] += 0 / stor15
                            emit Transfer((0 / stor15), arg1, this.address);
                            if 0 / stor15 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if _balances[address(arg2)] + arg3 - (0 / stor15) < _balances[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (0 / stor15)
                            emit Transfer((arg3 - (0 / stor15)), arg1, arg2);
                        else:
                            require arg3
                            if arg3 * stor14 / arg3 != stor14:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor15 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor15
                            if _balances[address(this.address)] + (arg3 * stor14 / stor15) < _balances[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            _balances[address(this.address)] += arg3 * stor14 / stor15
                            emit Transfer((arg3 * stor14 / stor15), arg1, this.address);
                            if arg3 * stor14 / stor15 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if _balances[address(arg2)] + arg3 - (arg3 * stor14 / stor15) < _balances[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (arg3 * stor14 / stor15)
                            emit Transfer((arg3 - (arg3 * stor14 / stor15)), arg1, arg2);
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'Insufficient Allowance'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        if arg1 != _pairAddress:
            if stor17:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'Insufficient Balance'
                _balances[address(arg1)] -= arg3
                if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg2 != _pairAddress:
                    stor14 = stor12
                else:
                    stor14 = stor13
                if arg2 != owner:
                    if arg2 != _pairAddress:
                        if arg3 > sub_33477327:
                            if not stor10[address(arg1)]:
                                if not stor10[address(arg2)]:
                                    revert with 0, 'TX Limit Exceeded'
                    else:
                        if arg3 > sub_cf4be394:
                            if not stor10[address(arg1)]:
                                if not stor10[address(arg2)]:
                                    revert with 0, 'TX Limit Exceeded'
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'Insufficient Balance'
                _balances[address(arg1)] -= arg3
                if stor9[address(arg1)]:
                    if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if not arg3:
                        if stor15 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor15
                        if _balances[address(this.address)] + (0 / stor15) < _balances[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(this.address)] += 0 / stor15
                        emit Transfer((0 / stor15), arg1, this.address);
                        if 0 / stor15 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if _balances[address(arg2)] + arg3 - (0 / stor15) < _balances[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (0 / stor15)
                        emit Transfer((arg3 - (0 / stor15)), arg1, arg2);
                    else:
                        require arg3
                        if arg3 * stor14 / arg3 != stor14:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if stor15 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor15
                        if _balances[address(this.address)] + (arg3 * stor14 / stor15) < _balances[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(this.address)] += arg3 * stor14 / stor15
                        emit Transfer((arg3 * stor14 / stor15), arg1, this.address);
                        if arg3 * stor14 / stor15 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if _balances[address(arg2)] + arg3 - (arg3 * stor14 / stor15) < _balances[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (arg3 * stor14 / stor15)
                        emit Transfer((arg3 - (arg3 * stor14 / stor15)), arg1, arg2);
        else:
            if arg2 == _routerAddress:
                if arg3 > _balances[address(arg1)]:
                    revert with 0, 'Insufficient Balance'
                _balances[address(arg1)] -= arg3
                if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                _balances[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor17:
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'Insufficient Balance'
                    _balances[address(arg1)] -= arg3
                    if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    _balances[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg2 != _pairAddress:
                        stor14 = stor12
                    else:
                        stor14 = stor13
                    if arg2 != owner:
                        if arg2 != _pairAddress:
                            if arg3 > sub_33477327:
                                if not stor10[address(arg1)]:
                                    if not stor10[address(arg2)]:
                                        revert with 0, 'TX Limit Exceeded'
                        else:
                            if arg3 > sub_cf4be394:
                                if not stor10[address(arg1)]:
                                    if not stor10[address(arg2)]:
                                        revert with 0, 'TX Limit Exceeded'
                    if arg3 > _balances[address(arg1)]:
                        revert with 0, 'Insufficient Balance'
                    _balances[address(arg1)] -= arg3
                    if stor9[address(arg1)]:
                        if _balances[address(arg2)] + arg3 < _balances[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        _balances[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if not arg3:
                            if stor15 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor15
                            if _balances[address(this.address)] + (0 / stor15) < _balances[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            _balances[address(this.address)] += 0 / stor15
                            emit Transfer((0 / stor15), arg1, this.address);
                            if 0 / stor15 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if _balances[address(arg2)] + arg3 - (0 / stor15) < _balances[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (0 / stor15)
                            emit Transfer((arg3 - (0 / stor15)), arg1, arg2);
                        else:
                            require arg3
                            if arg3 * stor14 / arg3 != stor14:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if stor15 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor15
                            if _balances[address(this.address)] + (arg3 * stor14 / stor15) < _balances[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            _balances[address(this.address)] += arg3 * stor14 / stor15
                            emit Transfer((arg3 * stor14 / stor15), arg1, this.address);
                            if arg3 * stor14 / stor15 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if _balances[address(arg2)] + arg3 - (arg3 * stor14 / stor15) < _balances[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            _balances[address(arg2)] = _balances[address(arg2)] + arg3 - (arg3 * stor14 / stor15)
                            emit Transfer((arg3 - (arg3 * stor14 / stor15)), arg1, arg2);
    return 1
}



}
