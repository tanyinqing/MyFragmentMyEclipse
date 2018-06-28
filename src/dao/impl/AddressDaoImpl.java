package dao.impl;

import dao.AddressDao;
import dao.BookDao;
import model.Address;
import model.Book;
import org.springframework.stereotype.Repository;

@Repository
public class AddressDaoImpl extends GenericDaoImpl<Address,Integer> implements AddressDao {

}
