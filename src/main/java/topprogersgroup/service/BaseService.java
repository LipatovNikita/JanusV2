package topprogersgroup.service;


public interface BaseService<T> {
    void create(T t);
    void delete(T t);
    void edit(T t);
}
