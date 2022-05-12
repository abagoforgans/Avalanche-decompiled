contract main {




// =====================  Runtime code  =====================


const BURNER_ROLE = 0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848

const DEFAULT_ADMIN_ROLE = 0

const DEPOSITOR_ROLE = 0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
mapping of struct roleAdmin;
address sub_96735aa0Address;
mapping of uint8 stor22427915917925543396274043026982415913868947383142065735673004032481845993297;
mapping of uint8 stor30223795208801820355043178529261319509117981222991753993616825494938606339066;
mapping of uint8 stor112883713937190520609055258397639065318052307769564912329481318944713104159689;

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_96735aa0(?) payable {
    return sub_96735aa0Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor3195[msg.sender]:
        revert with 0, 'dSTNDV1: Caller is not a minter'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 'NH{q', 17
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    if balanceOf[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor42D2[msg.sender]:
        revert with 0, 'dSTNDV1: Caller is not a burner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    if balanceOf[address(arg1)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 'NH{q', 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 'NH{q', 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function deposit(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not storF991[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dSTNDV1: Caller is not a depositor'
    require arg2.length >= 32
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !cd[(arg2 + 36)]:
        revert with 'NH{q', 17
    if totalSupply + cd[(arg2 + 36)] < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += cd[(arg2 + 36)]
    if balanceOf[address(arg1)] > !cd[(arg2 + 36)]:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + cd[(arg2 + 36)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += cd[(arg2 + 36)]
    emit Transfer(cd[(arg2 + 36)], 0, arg1);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    if balanceOf[address(arg1)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 'NH{q', 17
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function leave(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_96735aa0Address)
    staticcall sub_96735aa0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 226 len 30] >> 16,
                        0
        if balanceOf[address(msg.sender)] < arg1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalSupply < arg1:
            revert with 'NH{q', 17
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(sub_96735aa0Address)
        call sub_96735aa0Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / totalSupply
    else:
        if arg1 and ext_call.return_data[0] > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * ext_call.return_data[0] / arg1 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 226 len 30] >> 16,
                        0
        if balanceOf[address(msg.sender)] < arg1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalSupply < arg1:
            revert with 'NH{q', 17
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(sub_96735aa0Address)
        call sub_96735aa0Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 * ext_call.return_data[0] / totalSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function enter(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_96735aa0Address)
    staticcall sub_96735aa0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !arg1:
            revert with 'NH{q', 17
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)] > !arg1:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
    else:
        if not ext_call.return_data[0]:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !arg1:
                revert with 'NH{q', 17
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] > !arg1:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            if not arg1:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(0 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if totalSupply + (0 / ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / ext_call.return_data[0]
                if balanceOf[address(msg.sender)] > !(0 / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] + (0 / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
            else:
                if arg1 and totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(arg1 * totalSupply / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if totalSupply + (arg1 * totalSupply / ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / ext_call.return_data[0]
                if balanceOf[address(msg.sender)] > !(arg1 * totalSupply / ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1 * totalSupply / ext_call.return_data[0]
                emit Transfer((arg1 * totalSupply / ext_call.return_data[0]), 0, msg.sender);
    require ext_code.size(sub_96735aa0Address)
    call sub_96735aa0Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
