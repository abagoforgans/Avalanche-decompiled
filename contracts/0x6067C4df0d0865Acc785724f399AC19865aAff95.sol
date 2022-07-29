contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'This is a test', 0

const InitialSupply = 100000000 * 10^18

const decimals = 18

const _decimals = 18

const Dead = 57005

const symbol = 'DONTBUY', 0

const _symbol = 'DONTBUY', 0

const UniswapRouter = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const _name = 'This is a test', 0


address router_address;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 168
uint128 stor1; offset 160
address routerAddress;
mapping of uint8 stor2;
address owner;
uint8 stor4; offset 160
address developerAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 _circulatingSupply;
address marketingAddress;
mapping of uint256 sub_3fe7e33c;
uint8 stor13;
uint8 stor13; offset 8
uint8 sub_4147c6a7; offset 16
uint8 sub_93505052; offset 24
uint8 sub_c664c31d; offset 32
uint16 sub_e717fc30; offset 40
uint16 sub_1c099a83; offset 56
uint256 startTime;
mapping of uint256 _balances;
mapping of uint256 _allowances;
address sub_34184e26Address;
address pairAddress;

function _allowances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return _allowances[arg1][arg2]
}

function pegged() {
    return bool(uint8(stor13.field_0))
}

function sub_17668f1b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function totalSupply() {
    return _circulatingSupply
}

function sub_1c099a83(?) {
    return sub_1c099a83
}

function sub_34184e26(?) {
    return sub_34184e26Address
}

function sub_3fe7e33c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3fe7e33c[arg1]
}

function sub_4147c6a7(?) {
    return sub_4147c6a7
}

function sub_57d8ae82(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function _balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[address(arg1)]
}

function startTime() {
    return startTime
}

function sub_826c89bd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function sub_93505052(?) {
    return sub_93505052
}

function sub_952eb8a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function _circulatingSupply() {
    return _circulatingSupply
}

function pair() {
    return pairAddress
}

function sub_ad95fc8f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function sub_c01bb48b(?) {
    return bool(uint8(stor1.field_168))
}

function sub_c664c31d(?) {
    return sub_c664c31d
}

function sub_c78dc6fd(?) {
    return bool(uint8(stor13.field_8))
}

function developer() {
    return developerAddress
}

function sub_cbe70030(?) {
    return bool(uint8(stor1.field_160))
}

function locked() {
    return bool(stor4)
}

function router_address() {
    return router_address
}

function Marketing() {
    return marketingAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return _allowances[address(arg1)][address(arg2)]
}

function sub_e717fc30(?) {
    return sub_e717fc30
}

function sub_f4ea55ab(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function router() {
    return routerAddress
}

function _fallback() payable {
  stop
}

function sub_70fbc712(?) {
    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
        revert with 'NH{q', 17
    return (_circulatingSupply * sub_1c099a83 / 10000)
}

function sub_7f0f4d54(?) {
    require msg.sender == developerAddress
    require not uint8(stor1.field_168)
    Mask(96, 0, stor1.field_160) = 0
    Mask(88, 0, stor1.field_168) = 1
}

function set_owner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == developerAddress
    owner = arg1
    stor2[address(arg1)] = 1
}

function sub_2bfe8742(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'not owner'
    stor2[address(arg1)] = uint8(bool(arg2))
}

function sub_3a32fea8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'not owner'
    stor9[address(arg1)] = uint8(bool(arg2))
}

function sub_3f27cc48(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'not owner'
    stor8[address(arg1)] = uint8(bool(arg2))
}

function sub_fafab665(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'not owner'
    stor5[address(arg1)] = uint8(bool(arg2))
}

function sub_5bd263e7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'not owner'
    require address(arg1) != developerAddress
    stor7[address(arg1)] = uint8(bool(arg2))
}

function sub_569ff644(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'not owner'
    sub_e717fc30 = uint16(arg1)
    if uint16(arg1) < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'At least 10, remember that it's /1000, so 1 = 1%'
}

function sub_2f575b4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'not owner'
    sub_1c099a83 = uint16(arg1)
    if uint16(arg1) < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'At least 5, remember that it's /10000, so 5 = 0.1%'
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    _allowances[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_a201b2a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'not owner'
    require _balances[address(msg.sender)] >= arg1
    if _balances[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    _balances[address(msg.sender)] -= arg1
    if _circulatingSupply < arg1:
        revert with 'NH{q', 17
    _circulatingSupply -= arg1
    emit Transfer(arg1, this.address, 57005);
}

function sub_b0ef5937(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'not owner'
    sub_4147c6a7 = uint8(arg1)
    sub_93505052 = uint8(arg2)
    if uint8(arg1) < 0:
        revert with 0, 'At least 0'
    if uint8(arg2) < 0:
        revert with 0, 'At least 0'
    if uint8(arg1) >= 26:
        revert with 0, 'No honeypot'
    if uint8(arg2) >= 26:
        revert with 0, 'No honeypot'
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _allowances[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    _allowances[address(msg.sender)][address(arg1)] += arg2
    emit Approval((_allowances[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _allowances[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, '<0 allowance'
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    _allowances[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((_allowances[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_af1bb5c0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'not owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens in our balance'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5[address(msg.sender)]:
        if msg.sender == this.address:
            if sub_34184e26Address != msg.sender:
                if arg1 != sub_34184e26Address:
                    if stor5[address(msg.sender)]:
                        if _balances[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        _balances[address(msg.sender)] -= arg2
                        if _balances[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        _balances[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == this.address:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == sub_34184e26Address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    revert with 0, 'Blacklisted'
                                if stor7[address(arg1)]:
                                    revert with 0, 'Blacklisted'
                                if uint8(stor1.field_160):
                                    if not uint8(stor1.field_168):
                                        emit Transfer(0, msg.sender, arg1);
                                    else:
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                else:
                                    if not uint8(stor1.field_168):
                                        revert with 0, 'STOP'
                                    if not stor8[address(msg.sender)]:
                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                    if not stor9[address(arg1)]:
                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                            revert with 0, 'Max wallet on recipient'
                                    if arg1 == sub_34184e26Address:
                                        if arg2 and sub_93505052 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * sub_93505052 / 100:
                                            revert with 'NH{q', 17
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if arg1 != router_address:
                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                else:
                    if stor5[address(msg.sender)]:
                        if _balances[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        _balances[address(msg.sender)] -= arg2
                        if _balances[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        _balances[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == this.address:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    revert with 0, 'Blacklisted'
                                if stor7[address(arg1)]:
                                    revert with 0, 'Blacklisted'
                                if uint8(stor1.field_160):
                                    if not uint8(stor1.field_168):
                                        emit Transfer(0, msg.sender, arg1);
                                    else:
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                else:
                                    if not uint8(stor1.field_168):
                                        revert with 0, 'STOP'
                                    if not stor8[address(msg.sender)]:
                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                    if not stor9[address(arg1)]:
                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                            revert with 0, 'Max wallet on recipient'
                                    if arg1 == sub_34184e26Address:
                                        if arg2 and sub_93505052 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * sub_93505052 / 100:
                                            revert with 'NH{q', 17
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if arg1 != router_address:
                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
            else:
                if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                    if stor5[address(msg.sender)]:
                        if _balances[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        _balances[address(msg.sender)] -= arg2
                        if _balances[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        _balances[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == this.address:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    revert with 0, 'Blacklisted'
                                if stor7[address(arg1)]:
                                    revert with 0, 'Blacklisted'
                                if uint8(stor1.field_160):
                                    if not uint8(stor1.field_168):
                                        emit Transfer(0, msg.sender, arg1);
                                    else:
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                else:
                                    if not uint8(stor1.field_168):
                                        revert with 0, 'STOP'
                                    if not stor8[address(msg.sender)]:
                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                    if not stor9[address(arg1)]:
                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                            revert with 0, 'Max wallet on recipient'
                                    if arg1 == sub_34184e26Address:
                                        if arg2 and sub_93505052 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * sub_93505052 / 100:
                                            revert with 'NH{q', 17
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if arg1 != router_address:
                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                else:
                    if arg1 != sub_34184e26Address:
                        if stor5[address(msg.sender)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == sub_34184e26Address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if stor5[address(msg.sender)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
        else:
            if sub_34184e26Address != msg.sender:
                if arg1 != sub_34184e26Address:
                    if stor5[address(msg.sender)]:
                        if _balances[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        _balances[address(msg.sender)] -= arg2
                        if _balances[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        _balances[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 == this.address:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == sub_34184e26Address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    revert with 0, 'Blacklisted'
                                if stor7[address(arg1)]:
                                    revert with 0, 'Blacklisted'
                                if uint8(stor1.field_160):
                                    if not uint8(stor1.field_168):
                                        emit Transfer(0, msg.sender, arg1);
                                    else:
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                else:
                                    if not uint8(stor1.field_168):
                                        revert with 0, 'STOP'
                                    if not stor8[address(msg.sender)]:
                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                    if not stor9[address(arg1)]:
                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                            revert with 0, 'Max wallet on recipient'
                                    if arg1 == sub_34184e26Address:
                                        if arg2 and sub_93505052 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * sub_93505052 / 100:
                                            revert with 'NH{q', 17
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if arg1 != router_address:
                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                else:
                    if stor5[address(msg.sender)]:
                        if _balances[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        _balances[address(msg.sender)] -= arg2
                        if _balances[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        _balances[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 == this.address:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    revert with 0, 'Blacklisted'
                                if stor7[address(arg1)]:
                                    revert with 0, 'Blacklisted'
                                if uint8(stor1.field_160):
                                    if not uint8(stor1.field_168):
                                        emit Transfer(0, msg.sender, arg1);
                                    else:
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                else:
                                    if not uint8(stor1.field_168):
                                        revert with 0, 'STOP'
                                    if not stor8[address(msg.sender)]:
                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                    if not stor9[address(arg1)]:
                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                            revert with 0, 'Max wallet on recipient'
                                    if arg1 == sub_34184e26Address:
                                        if arg2 and sub_93505052 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * sub_93505052 / 100:
                                            revert with 'NH{q', 17
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if arg1 != router_address:
                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
            else:
                if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                    if stor5[address(msg.sender)]:
                        if _balances[address(msg.sender)] < arg2:
                            revert with 'NH{q', 17
                        _balances[address(msg.sender)] -= arg2
                        if _balances[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        _balances[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg1 == this.address:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor7[address(msg.sender)]:
                                    revert with 0, 'Blacklisted'
                                if stor7[address(arg1)]:
                                    revert with 0, 'Blacklisted'
                                if uint8(stor1.field_160):
                                    if not uint8(stor1.field_168):
                                        emit Transfer(0, msg.sender, arg1);
                                    else:
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                else:
                                    if not uint8(stor1.field_168):
                                        revert with 0, 'STOP'
                                    if not stor8[address(msg.sender)]:
                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                    if not stor9[address(arg1)]:
                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                            revert with 0, 'Max wallet on recipient'
                                    if arg1 == sub_34184e26Address:
                                        if arg2 and sub_93505052 > -1 / arg2:
                                            revert with 'NH{q', 17
                                        if arg2 < arg2 * sub_93505052 / 100:
                                            revert with 'NH{q', 17
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if arg1 != router_address:
                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                else:
                    if arg1 != sub_34184e26Address:
                        if stor5[address(msg.sender)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == sub_34184e26Address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if stor5[address(msg.sender)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
    else:
        if stor5[address(arg1)]:
            if msg.sender == this.address:
                if sub_34184e26Address != msg.sender:
                    if arg1 != sub_34184e26Address:
                        if stor5[address(arg1)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == sub_34184e26Address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if stor5[address(arg1)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                else:
                    if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                        if stor5[address(arg1)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if arg1 != sub_34184e26Address:
                            if stor5[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == sub_34184e26Address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if stor5[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
            else:
                if sub_34184e26Address != msg.sender:
                    if arg1 != sub_34184e26Address:
                        if stor5[address(arg1)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == sub_34184e26Address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if stor5[address(arg1)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                else:
                    if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                        if stor5[address(arg1)]:
                            if _balances[address(msg.sender)] < arg2:
                                revert with 'NH{q', 17
                            _balances[address(msg.sender)] -= arg2
                            if _balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            _balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg1 == this.address:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if stor7[address(msg.sender)]:
                                        revert with 0, 'Blacklisted'
                                    if stor7[address(arg1)]:
                                        revert with 0, 'Blacklisted'
                                    if uint8(stor1.field_160):
                                        if not uint8(stor1.field_168):
                                            emit Transfer(0, msg.sender, arg1);
                                        else:
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                    else:
                                        if not uint8(stor1.field_168):
                                            revert with 0, 'STOP'
                                        if not stor8[address(msg.sender)]:
                                            if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                        if not stor9[address(arg1)]:
                                            if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                revert with 0, 'Max wallet on recipient'
                                        if arg1 == sub_34184e26Address:
                                            if arg2 and sub_93505052 > -1 / arg2:
                                                revert with 'NH{q', 17
                                            if arg2 < arg2 * sub_93505052 / 100:
                                                revert with 'NH{q', 17
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if arg1 != router_address:
                                                if arg2 and sub_4147c6a7 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_4147c6a7 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if arg1 != sub_34184e26Address:
                            if stor5[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == sub_34184e26Address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if stor5[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
        else:
            if stor2[address(msg.sender)]:
                if msg.sender == this.address:
                    if sub_34184e26Address != msg.sender:
                        if arg1 != sub_34184e26Address:
                            if stor2[address(msg.sender)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == sub_34184e26Address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if stor2[address(msg.sender)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                            if stor2[address(msg.sender)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if arg1 != sub_34184e26Address:
                                if stor2[address(msg.sender)]:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == this.address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == sub_34184e26Address:
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(msg.sender)]:
                                                revert with 0, 'Blacklisted'
                                            if stor7[address(arg1)]:
                                                revert with 0, 'Blacklisted'
                                            if uint8(stor1.field_160):
                                                if not uint8(stor1.field_168):
                                                    emit Transfer(0, msg.sender, arg1);
                                                else:
                                                    if not stor8[address(msg.sender)]:
                                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                    if not stor9[address(arg1)]:
                                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                            revert with 0, 'Max wallet on recipient'
                                                    if arg1 == sub_34184e26Address:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg1 != router_address:
                                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and sub_93505052 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_93505052 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if not uint8(stor1.field_168):
                                                    revert with 0, 'STOP'
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                            else:
                                if stor2[address(msg.sender)]:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == this.address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(msg.sender)]:
                                                revert with 0, 'Blacklisted'
                                            if stor7[address(arg1)]:
                                                revert with 0, 'Blacklisted'
                                            if uint8(stor1.field_160):
                                                if not uint8(stor1.field_168):
                                                    emit Transfer(0, msg.sender, arg1);
                                                else:
                                                    if not stor8[address(msg.sender)]:
                                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                    if not stor9[address(arg1)]:
                                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                            revert with 0, 'Max wallet on recipient'
                                                    if arg1 == sub_34184e26Address:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg1 != router_address:
                                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and sub_93505052 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_93505052 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if not uint8(stor1.field_168):
                                                    revert with 0, 'STOP'
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                else:
                    if sub_34184e26Address != msg.sender:
                        if arg1 != sub_34184e26Address:
                            if stor2[address(msg.sender)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == sub_34184e26Address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if stor2[address(msg.sender)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                            if stor2[address(msg.sender)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if arg1 != sub_34184e26Address:
                                if stor2[address(msg.sender)]:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == sub_34184e26Address:
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(msg.sender)]:
                                                revert with 0, 'Blacklisted'
                                            if stor7[address(arg1)]:
                                                revert with 0, 'Blacklisted'
                                            if uint8(stor1.field_160):
                                                if not uint8(stor1.field_168):
                                                    emit Transfer(0, msg.sender, arg1);
                                                else:
                                                    if not stor8[address(msg.sender)]:
                                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                    if not stor9[address(arg1)]:
                                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                            revert with 0, 'Max wallet on recipient'
                                                    if arg1 == sub_34184e26Address:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg1 != router_address:
                                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and sub_93505052 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_93505052 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if not uint8(stor1.field_168):
                                                    revert with 0, 'STOP'
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                            else:
                                if stor2[address(msg.sender)]:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(msg.sender)]:
                                                revert with 0, 'Blacklisted'
                                            if stor7[address(arg1)]:
                                                revert with 0, 'Blacklisted'
                                            if uint8(stor1.field_160):
                                                if not uint8(stor1.field_168):
                                                    emit Transfer(0, msg.sender, arg1);
                                                else:
                                                    if not stor8[address(msg.sender)]:
                                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                    if not stor9[address(arg1)]:
                                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                            revert with 0, 'Max wallet on recipient'
                                                    if arg1 == sub_34184e26Address:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg1 != router_address:
                                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and sub_93505052 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_93505052 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if not uint8(stor1.field_168):
                                                    revert with 0, 'STOP'
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
            else:
                if msg.sender == this.address:
                    if sub_34184e26Address != msg.sender:
                        if arg1 != sub_34184e26Address:
                            if stor2[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == sub_34184e26Address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if stor2[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                            if stor2[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if arg1 != sub_34184e26Address:
                                if stor2[address(arg1)]:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == this.address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == sub_34184e26Address:
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(msg.sender)]:
                                                revert with 0, 'Blacklisted'
                                            if stor7[address(arg1)]:
                                                revert with 0, 'Blacklisted'
                                            if uint8(stor1.field_160):
                                                if not uint8(stor1.field_168):
                                                    emit Transfer(0, msg.sender, arg1);
                                                else:
                                                    if not stor8[address(msg.sender)]:
                                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                    if not stor9[address(arg1)]:
                                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                            revert with 0, 'Max wallet on recipient'
                                                    if arg1 == sub_34184e26Address:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg1 != router_address:
                                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and sub_93505052 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_93505052 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if not uint8(stor1.field_168):
                                                    revert with 0, 'STOP'
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                            else:
                                if stor2[address(arg1)]:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == this.address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(msg.sender)]:
                                                revert with 0, 'Blacklisted'
                                            if stor7[address(arg1)]:
                                                revert with 0, 'Blacklisted'
                                            if uint8(stor1.field_160):
                                                if not uint8(stor1.field_168):
                                                    emit Transfer(0, msg.sender, arg1);
                                                else:
                                                    if not stor8[address(msg.sender)]:
                                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                    if not stor9[address(arg1)]:
                                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                            revert with 0, 'Max wallet on recipient'
                                                    if arg1 == sub_34184e26Address:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg1 != router_address:
                                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and sub_93505052 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_93505052 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if not uint8(stor1.field_168):
                                                    revert with 0, 'STOP'
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                else:
                    if sub_34184e26Address != msg.sender:
                        if arg1 != sub_34184e26Address:
                            if stor2[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == sub_34184e26Address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if stor2[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                    else:
                        if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                            if stor2[address(arg1)]:
                                if _balances[address(msg.sender)] < arg2:
                                    revert with 'NH{q', 17
                                _balances[address(msg.sender)] -= arg2
                                if _balances[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                _balances[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if arg1 == this.address:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if stor7[address(msg.sender)]:
                                            revert with 0, 'Blacklisted'
                                        if stor7[address(arg1)]:
                                            revert with 0, 'Blacklisted'
                                        if uint8(stor1.field_160):
                                            if not uint8(stor1.field_168):
                                                emit Transfer(0, msg.sender, arg1);
                                            else:
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                        else:
                                            if not uint8(stor1.field_168):
                                                revert with 0, 'STOP'
                                            if not stor8[address(msg.sender)]:
                                                if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                            if not stor9[address(arg1)]:
                                                if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] > -arg2 - 1:
                                                    revert with 'NH{q', 17
                                                if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                    revert with 0, 'Max wallet on recipient'
                                            if arg1 == sub_34184e26Address:
                                                if arg2 and sub_93505052 > -1 / arg2:
                                                    revert with 'NH{q', 17
                                                if arg2 < arg2 * sub_93505052 / 100:
                                                    revert with 'NH{q', 17
                                                if _balances[address(msg.sender)] < arg2:
                                                    revert with 'NH{q', 17
                                                _balances[address(msg.sender)] -= arg2
                                                if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                    revert with 'NH{q', 17
                                                _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if arg1 != router_address:
                                                    if arg2 and sub_4147c6a7 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_4147c6a7 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                    emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                        else:
                            if arg1 != sub_34184e26Address:
                                if stor2[address(arg1)]:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg1 == sub_34184e26Address:
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(msg.sender)]:
                                                revert with 0, 'Blacklisted'
                                            if stor7[address(arg1)]:
                                                revert with 0, 'Blacklisted'
                                            if uint8(stor1.field_160):
                                                if not uint8(stor1.field_168):
                                                    emit Transfer(0, msg.sender, arg1);
                                                else:
                                                    if not stor8[address(msg.sender)]:
                                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                    if not stor9[address(arg1)]:
                                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                            revert with 0, 'Max wallet on recipient'
                                                    if arg1 == sub_34184e26Address:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg1 != router_address:
                                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and sub_93505052 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_93505052 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if not uint8(stor1.field_168):
                                                    revert with 0, 'STOP'
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                            else:
                                if stor2[address(arg1)]:
                                    if _balances[address(msg.sender)] < arg2:
                                        revert with 'NH{q', 17
                                    _balances[address(msg.sender)] -= arg2
                                    if _balances[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    _balances[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg1 == this.address:
                                        if _balances[address(msg.sender)] < arg2:
                                            revert with 'NH{q', 17
                                        _balances[address(msg.sender)] -= arg2
                                        if _balances[address(arg1)] > -arg2 - 1:
                                            revert with 'NH{q', 17
                                        _balances[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == 0x60ae616a2155ee3d9a68541ba4544862310933d4:
                                            if _balances[address(msg.sender)] < arg2:
                                                revert with 'NH{q', 17
                                            _balances[address(msg.sender)] -= arg2
                                            if _balances[address(arg1)] > -arg2 - 1:
                                                revert with 'NH{q', 17
                                            _balances[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if stor7[address(msg.sender)]:
                                                revert with 0, 'Blacklisted'
                                            if stor7[address(arg1)]:
                                                revert with 0, 'Blacklisted'
                                            if uint8(stor1.field_160):
                                                if not uint8(stor1.field_168):
                                                    emit Transfer(0, msg.sender, arg1);
                                                else:
                                                    if not stor8[address(msg.sender)]:
                                                        if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                    if not stor9[address(arg1)]:
                                                        if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] > -arg2 - 1:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                            revert with 0, 'Max wallet on recipient'
                                                    if arg1 == sub_34184e26Address:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg1 != router_address:
                                                            if arg2 and sub_4147c6a7 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_4147c6a7 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                            emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                        else:
                                                            if arg2 and sub_93505052 > -1 / arg2:
                                                                revert with 'NH{q', 17
                                                            if arg2 < arg2 * sub_93505052 / 100:
                                                                revert with 'NH{q', 17
                                                            if _balances[address(msg.sender)] < arg2:
                                                                revert with 'NH{q', 17
                                                            _balances[address(msg.sender)] -= arg2
                                                            if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                            if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                                revert with 'NH{q', 17
                                                            _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                            emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                            emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                            else:
                                                if not uint8(stor1.field_168):
                                                    revert with 0, 'STOP'
                                                if not stor8[address(msg.sender)]:
                                                    if _circulatingSupply and sub_1c099a83 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    require arg2 <= _circulatingSupply * sub_1c099a83 / 10000
                                                if not stor9[address(arg1)]:
                                                    if _circulatingSupply and sub_e717fc30 > -1 / _circulatingSupply:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] > -arg2 - 1:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(arg1)] + arg2 >= _circulatingSupply * sub_e717fc30 / 1000:
                                                        revert with 0, 'Max wallet on recipient'
                                                if arg1 == sub_34184e26Address:
                                                    if arg2 and sub_93505052 > -1 / arg2:
                                                        revert with 'NH{q', 17
                                                    if arg2 < arg2 * sub_93505052 / 100:
                                                        revert with 'NH{q', 17
                                                    if _balances[address(msg.sender)] < arg2:
                                                        revert with 'NH{q', 17
                                                    _balances[address(msg.sender)] -= arg2
                                                    if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                    if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                        revert with 'NH{q', 17
                                                    _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                    emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                    emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg1 != router_address:
                                                        if arg2 and sub_4147c6a7 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_4147c6a7 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_4147c6a7 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_4147c6a7 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_4147c6a7 / 100
                                                        emit Transfer((arg2 * sub_4147c6a7 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_4147c6a7 / 100)), msg.sender, arg1);
                                                    else:
                                                        if arg2 and sub_93505052 > -1 / arg2:
                                                            revert with 'NH{q', 17
                                                        if arg2 < arg2 * sub_93505052 / 100:
                                                            revert with 'NH{q', 17
                                                        if _balances[address(msg.sender)] < arg2:
                                                            revert with 'NH{q', 17
                                                        _balances[address(msg.sender)] -= arg2
                                                        if _balances[address(arg1)] > -arg2 + (arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(arg1)] = _balances[address(arg1)] + arg2 - (arg2 * sub_93505052 / 100)
                                                        if _balances[address(this.address)] > -(arg2 * sub_93505052 / 100) - 1:
                                                            revert with 'NH{q', 17
                                                        _balances[address(this.address)] += arg2 * sub_93505052 / 100
                                                        emit Transfer((arg2 * sub_93505052 / 100), msg.sender, this.address);
                                                        emit Transfer((arg2 - (arg2 * sub_93505052 / 100)), msg.sender, arg1);
    return 1
}



}
